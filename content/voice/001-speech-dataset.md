---
title: SOOTHER Speech Dataset
date: "2021-04-01"
draft: false
weight: 0
---

# SOOTHER Speech Dataset 
In April 2021, 13,000 whisper voice stems were recorded and cut at Superbudda in Torino, Italy. Of the 13,000 recorded voice stems, appoximately 7,000 made it through a very reductive [quality control](/docs/001-technical-management-soother-sound) process in order to train the v.01 of the synthesized whisper. 

The dataset consists of the following texts:
- Morris, William, et al. _Arts and Crafts Essays_. 1893.
- Griffiths, Arthur. _The Chronicles of Newgate, Vol. 2_. 1884.
- Roosevelt, Franklin D. _The Fireside Chats of Franklin Delano Roosevelt_. 1933-42.
- Harland, Marion. _Marion Harland's Cookery for Beginners_. 1893.
- Rolt-Wheeler, Francis. _The Science - History of the Universe, Vol. 5: Biology_. 1910.
- Joyce, James, _Ulysses_, "Penelope"(Molly Bloom's soliloquy), 1922.
- Stein, Gertrude, _Tender Buttons_, 1914. 
- Borges, Jorge Luis, trans. Anthony Boucher, "The Garden of Forking Paths", 1941. 
- Shelley, Mary, _Frankenstein_, 1823. 
- Tolan, Claire, "CICADA GAMES", 2021.

The first five texts comprise part of the [LJ Speech Dataset](https://keithito.com/LJ-Speech-Dataset/), the most widely-used public domain speech dataset. The final five texts I selected to counterbalance the first five, and in particular, *The Chronicles of Newgate, Vol. II*, as I explain below. 

Of the selected texts, all except "The Garden of Forking Paths" and _Ulysses_ are in the worldwide public domain (_Ulysses_ is in the public domain only in Europe). Passages from _Frankenstein_ and _The Chronicles of Newgate, Volume II_ together comprise approximately 80% of the 13,000 total voice stems.

# _The Chronicles of Newgate, Volume II_
Per its title, this text chronicles the history of [Newgate Prison ](https://en.wikipedia.org/wiki/Newgate_Prison) in London, largely through the 1800s, its final century. Here, we read of prison squalor and attempts to end it; celebrity executioners and a catalogue of their botched and perfect executions; the often bloody crimes of the executed and their repentance -- or lack thereof -- before hanging; the pleasures and horrors of the crowds that gathered to watch executions; daring escapes and apprehensions; bureaucratic minutiae; and architectural evolutions of the prison. 

It is a remarkable book, and all the more remarkable when used to train "artificially intelligent" voices given its bountiful catalogue of human cruelty, suffering, misfortune, and misadventure. I have no idea why, out of all the world's literature in the public domain, *this* particular book was selected as the foundational text of a popular speech dataset. I've written Keith Ito, the creator of the dataset, to ask exactly this question, and I will update this documentation if he responds. To me, it seems like complete genius to imbue the synthesis of a human voice with this backdrop of suffering. It is also a taunt to those who are meant to read the texts neutrally in recording. And finally, it is a demonstration of the training algorithms' fundamentally machinic perspective: they will process all texts, regardless of contents, in the same way.

But does something of the suffering source get dragged through the training process? _The Chronicles of Newgate_ was the first text I recorded for SOOTHER's dataset, and I quickly became concerned that my voice, which was supposed to remain netural, might be inflected with some of the graphic suffering that I was reciting.

What effect does this uncontrolled emotional inflection have on the quality of my synthesised whisper? How might emotional undertones be transferred into the trained voice? In voice synthesis literature, "emotive" synthesis is currently being explored from [several]() [different]() [angles](). All of these studies and implementations are completely fascinating. However, none of them quite get at what I'm asking, which is about how subtle emotional artifiacts are unintentionally transferred from voice stems into a trained voice, and what physiological effect these emotional artifacts might have on a listener. This is a *particularly* ripe question for a whispering AI, given the physiological implications of ASMR itself.

# LITERARY COUNTERBALANCE
The remaining texts of the LJ Speech Dataset were mostly neutral and nondescript: recipes, biology texts, Franklin Roosevelt's fireside chats (which I re-read for the first time since high school and found... annoying). And so, to provide an balancing tone for my dataset, I selected texts that I knew would read differently than *The Chronicles of Newgate* and other neutral texts -- I wanted to add some literary verve to SOOTHER's dataset. 

I picked one of my own recent texts, ["CICADA GAMES"](https://cst.yt/training/projects/cicada-games); Gertrude Stein's *Tender Buttons* for its perspective on the world, one of the first narrations in literature, I think, that is neither human nor animal, but object-spoken; the final chapter of *Ulysses*, Molly Bloom's soliloquy, for its raw emotion; and Borges' "Garden of Forking Paths" for its relevance to the forks of conversation design. And finally, *Frankenstein*, given that it is (I think?) the first narrative of aritficial intelligence created per *scientific* principles.

Reading *Frankenstein*, the longest of my selected texts, was a complete pleasure, and this is apparent in my whisper stems. Whereas my voice often feel cramped and rigid in *The Chronicles of Newgate* samples, in *Frankenstein*, the tone is far more languorous, even as I tried to read with a standardized pacing and attitude throughout the entire recording process. 

# VOCAL CORD DAMAGE
After reading through *Frankenstein*, in my final days at superbudda, I recorded my final four selected texts. I had been recording nearly every day for four weeks, and my voice was so strained from the scores of hours of whispering that these final stems carry a *different* undertone, one of a physical struggle to produce the material. (Whispering, which requires holding the vocal cords apart and taut, is notoriously damaging.) The strain and struggle in the voice in these recordings also has interesting implications for an AI trained on these stems. 

My voice remained strained for several months after my time in the studio, and even now, nearly a year later, I cannot throw my voice in the same ways I used to be able to, which sadly reduces my capacity for screamo performance. It's very possible (pending medical opinion!) that I permanently altered my vocal range in my quest to create its whispered model. 


# FUTURE EXPERIMENTS
With this material, I see paths for several different future experiments. In the first, a model might be trained with stems from *The Chronicles of Newgate* and another with stems from *Frankenstein* and my other selected texts. The synthesised whispers might be judged by users: how do they strike the unknowing ear? They might be put into conversation with one another; they might be used for different purposes depending on the "branding" of the chatbot (see the white-labeling discussion in [concept](/concept#personality)). 

Finally, the difference between the two whispers might set me up for a more esoteric set of experiments about the undertones and subtleties of the artificially intelligent whisper. Though the most under-defined, this last pursuit is the most interesting to me, as it seems to provide great intersection with literary theory and poetic theories of the voice. See further discussion about this in the [survey of my next steps](/next-gen).
