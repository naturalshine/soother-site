---
title: Technical management of SOOTHER's speech dataset
date: "2021-04-01"
draft: false
weight: 1
---

# Technical Management of SOOTHER's speech dataset

In recording the source material for SOOTHER's [voice](/voice), I found myself with 80+ hours of sound files. I recorded long files with deliberate pauses between each "line" of [SOOTHER's source spreadsheets](/voice#source).

Spreadsheets looked like this: 

![soother spreadsheet](/images/soother_initial_spreadsheet02.png) 

To manage this huge amount of raw audio data, I came up with the following system for programmatically cutting the sound files, quality controlling the cut files, and archiving them for training.

# Cutting sound files

Python, the most utilitarian of all languages other than perl, has fabulous sound manipulation libraries, and I was able to whip up a little script to cut my long sound files into short samples without too much stress. To identify silence in my tracks and cut the files on the silence, I used [pydub](https://pypi.org/project/pydub/).

While recording, I had left 5-10 second pauses between each "line"  of the source material spreadsheets. So, the first thing my script had to do was to identify these pauses: 

```
    chunks = split_on_silence (
        # this is our long file that we want to split
        song, 

        # Specify that a silent chunk must be at least 2s 
        # or 2000 ms long.
        min_silence_len = 2000,

        # we set a very low silence threshhold cause 
        # we're... whispering
        silence_thresh = -74.0,
        
        # keep some ms of silence, unfortunately cannot 
        # designate if it should be at end vs beginning of
        # file
        keep_silence = 500
    )
```

It's pretty simple! 

Unfortunately, in practice, it was less so. My audio files, due to pure sloppiness of the operator (aka me, whomp whomp), were inconsistent in volume and I had failed to log the volumes associated with each. Also, when whispering, one tends to make a lot of... bodily sounds. Mouth sounds, stomach sounds! Sometimes these disturbed the period of "silence", leading to mulitple "lines" of a spreadsheet being included in the same "chunk" of sound.

So after I ran this little cutting function, I programmatically checked the resulting "chunks" to see if any were longer than 20s, which was the absolute longest possible file I should have. If they were (and e.g. contained multiple lines since the interstitial silences hadn't been registered), I ran a debug function on them, which raised the silence threshhold, meaning that soft mouth sounds/stomach sounds would be less likely to cause  misrecognition of a "silence" between lines. 

I shuttled each sound file's pieces into an insanely-designed file system, which made internal sense to my recording process and but ZERO external sense. Quite frankly, as a former archivist, I'm embarassed about it! Here's my unsolicited advice: if you're undertaking a major project that has 80 hours of sound, it's probably worth putting in a little effort to make a naming & file system that's going to make sense to an external observer... or to yourself in 8 months when you look at your files again. I digress =]

# DE-DUPLICATION AND NECESSARY CULLING

After cutting my files, I ended up with ten folders containing 10-30 sub-folders each, each of which contained 30-100 audio files. Those files were, in theory, named to correspond to the file names that I had originally assigned in the source spreadsheets. 

It dawned on me, perhaps more slowly than it should have, that I was facing a complete nightmare of quality control. These scores of hours of sound had been, thus far, managed completely programmatically. Training a voice model requires *very* clean sound files, and I would have to do manual quality control. I estimated quality control on all the files would take at least 60 hours (this is a good joke, because it would take far longer for reasons I will soon explain). At the time, I was simulataneously developing two apps, and 60 hours I could not spare. 

So, I can up with a system for out-sourcing the bulk of quality control. I broke the process down into several stages. First, I would take a first-pass on all the files, listening to the first 2-seconds of each to make sure that it was synced to its matching line in the source spreadsheet. Importantly, this enabled me to discard duplicates as well (I had often recorded multiple takes of the same line). 

I programmed a little script to let me do this more quickly. Basically, I reasoned that in the case of duplicates, the "final" take of a line would be the one to keep. Thus, I played through the files in a folder in *reverse* order, playing, pausing, and discarding or keeping the file with keystrokes programmed into my script. Files that were kept were given a name that corresponded to their index in the spreadsheet. At the end of each folder, I checked the first and last files in the retained sound folder to ensure that they matched the first and last lines of the corresponding spreadsheet indices. This was a major hack, but nevertheless it was effective about 70% of the time. It failed when (a) I pressed the wrong key in the script, which often happened because I was moving quickly (b) the retained files had issues "later" in the file, and I had only reviewed the first two seconds. Because I was pressed for time and had an excess of material, it was ok to lose 30% of files to an imperfect review process. 

My script to cull files looked like this: 

```
import os
from pathlib import Path

from pydub import AudioSegment
from pydub.playback import play

def process_input(song, pathVal, file):
	path = pathVal.split("/")

	# ask me whether to keep or cull the file
	value = input("1 = keep; 9 = dont keep for now")
	print(f"You entered {value}")

	# if i type "1", keep the file
	# save it according to my insane logic in nested
	# directory within cut_files
	if value == "1":
		cut_path_arr = ["save_files" if x=="cut_files" else x for x in path]
		cut_path = "/".join(cut_path_arr)
		
		# make a new directory for this folder if it 
		# doesn't already exist
		Path(cut_path).mkdir(parents=True, exist_ok=True)

		# export the song (at a bitrate incompatible
		# with training algo, whoops!)
		song.export(
            cut_path + "/" + file,
            bitrate = 44100,
            format = "wav"
        )
	
	# if I press "9", shuttle the song to a 
	# directory for "culled" files
	elif value == "9":
		cut_path_arr = ["scratch_files" if x=="cut_files" else x for x in path]
		cut_path = "/".join(cut_path_arr)
		
		# create the right directory for the file if it
		# doesn't already exist
		Path(cut_path).mkdir(parents=True, exist_ok=True)

		# export the file
		song.export(
            cut_path + "/" + file,
            bitrate = 44100,
            format = "wav"
        )
	
	else:
		# if i entered neither a 1 or a 9 (I was 
		# moving very quickly), ask me again :) 
		print("GUESS AGAIN BITCH")
		process_input(song, pathVal, file)


def cull_file(pathVal, file):
	# load the file
	song = AudioSegment.from_wav(pathVal + "/" + file)

	# play file until a key is pressed
	while True:
		try:
			play(song)
		except KeyboardInterrupt:
			# break and move onto process_input
			break

	# make decision about whether to keep or cull file
	process_input(song, pathVal, file)

# Enter the path for the folder to be reviewed
pathVal = input("ENTER FOLDER PATH!")
print(f"You entered {pathVal}")

# walk through all of the files within this folder
for root, dirs, files in os.walk(pathVal):
	print("root = ", root)
	print("dirs = ", dirs)
	# if path had sub-directories, review
	# files in each sub-dir
	if dirs:
		for dirname in sorted(dirs, key=int):
			print("DIRNAME ", dirname)
			if files:
				print("files = ", files)
				fileLst = []
				# append wav files only to the files 
				# to be reviewed
				for file in files: 
					if file.endswith('.wav'):
						fileLst.append(file[:-4])
				
				# sort the files BACKWARDS, starting
				# with the highest index
				for file in sorted(fileLst, key=int): 
					print(file)
					# JUDGE THE FILE
					cull_file(root, file + ".wav")
			else:
				print("NO FILES!")

	# if there are no sub-dirs, simply review files
	elif files: 
		print("files = ", files)
		fileLst = []
		for file in files: 
			if file.endswith('.wav'):
				fileLst.append(file[:-4])
		
		# sort the files BACKWARDS, starting
		# with the highest index
		for file in sorted(fileLst, key=int): 
			print(file)
			# JUDGE THE FILE
			cull_file(root, file + ".wav")
	else:
		print("no? ", root)
			
```

At the end of this process, I had a file system like the following: 

![file system](/images/soother_cut_files_01.png)

![file system](/images/soother_cut_files_02.png)

![file system](/images/soother_cut_files_03.png)

# OUTSOURCING QUALITY CONTROL

At the end of this process, I had a clean file structure that, in theory, corresponded to each line in the source spreadsheets. But the files needed to be reviewed. I decided to outsource this on Fiverr. I hired a bunch of freelancers to each process 1000 files. They were instructured to mark, in the spreadsheet, files that were (a) completely inaccurate or that (b) had long silences at the beginning or end, interruptions in the middle, etc. 

With the completed spreadsheets from my Fiverr helpers, I programmatically culled files that were marked as problematic. I used the remaining sound files, which comprised approximately 20 hours of material, for the training of SOOTHER's prototype. It's amazing that 80 hours of recording could result in only 20 hours of usable material. I estimate that if I recover files that had been inappropriately culled, or which simply need some manual sound-editing, I could recover 10-15 more hours. However, it turns out that 20 hours is more than enough to train a model, these days, so I don't think this will be necessary. 

I ended up with all of the sound files appropriately named in a flat directory, like the following: 

![training sound files](/images/soother_final_files.png)

And a metadata csv that contained all of the source text and corresponding file names: 

![training metadata](/images/soother_compiled_metadata_02.png)

# REMAINING ISSUES WITH DATA QUALITY

However, during training, I encountered many problems with data quality. Although I eventually managed to reach "alignment" in my model, all indications were that the data was entirely too sloppy. See [training documentation](/docs/training-documentation) for more information. 

Essentially, I think that the sound files need to have another quality control run on all of them, one which is more in-depth, and probably undertaken by myself or a properly trained assistant. There are also issues with (a) volume inconsistency and (b) bitrate that still need to be addressed, and that might contribute to source data issues. Finally, the pacing of my voice during different phases of recording might simply vary *too much*, leading to confusion in the data's standard deviation & c. (see training documentation and [voice](/voice)). In this case, I would need to develop a method to analyse pacing and standard deviation and to discard files that are messing up the overall distribution. In a perfect world, this could be as simple as programmatically removing outlier files in the pre-processing analysis results. Indeed, while training, I already programmatically discarded files that were more than 12 seconds long -- so doing the same for outliers in the analysis results should not be difficult. My concern is that it would lead to the discarding of *too many* files. I will address this in the [next phase of the project](/next-gen).