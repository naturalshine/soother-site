---
title: SOOTHER Synthesis
date: "2021-04-01"
draft: false
weight: 1
---

# SOOTHER Synthesis

Here are some examples of SOOTHER's synthesised whisper in training and inference. The "training" samples are output at "checkpoints" during model training and are derived from the speech dataset; the "inference" samples are created by querying a trained model with text that is not included in the speech dataset. As you can see below, the "training" samples are far more coherent due to the algorithm having contextual information about the text being output. 

As [noted](/about), SOOTHER is trained imperfectly, and this failing is clear, in particular, in the "inference" samples. For more about training and inference, see the [general discussion](/docs/002-training-soother) on the subject. 

I completed two major rounds of training on SOOTHER, one to ~250,000 steps, and another to ~140,000 steps, which was halted due to time; budget; and a creeping suspicion that my [data wasn't clean enough](/docs/001-technical-management-soother-sound#remaining-issues-with-data-quality) and should be sanitized further before continuing.

# Training Round One

This round of training was undertaken without having exactly "RTFM"'d. As a result, I had no idea what I was suppossed to be observing in the spectograms that are generated along with audio samples at training checkpoints. Spoiler: I wasn't seeing the right thing. Although checkpoint audio samples improved over time , the accompanying spectrograms indicated that my model was *not* finding alignment. This becomes apparent when attempting inference on this model, which I demonstrate in the next section. 

## 1,000 steps
{{< audio src="/audio/step-1000-audio.wav" class="audio" >}}

![1000 steps](/images/step-1000-align.png)

## 240,000 steps
{{< audio src="/audio/step-240000-audio.wav" class="audio" >}}

![240,000 steps](/images/step-240000-align.png)

## 245,000 steps
{{< audio src="/audio/step-245000-audio.wav" class="audio" >}}

![245,000 steps](/images/step-245000-align.png)

## 250,000 steps
{{< audio src="/audio/step-250000-audio.wav" class="audio" >}}

![250,000 steps](/images/step-250000-align.png)

# Inference Round One

Here, you'll see the catastrophic failure in inference. Although inference also largely fails for the model trained in round two, here, the output from inference is completely incoherent. 

## Inference at 240,000 steps - 1
{{< audio src="/audio/eval-240000-17.wav" class="audio" >}}

![250,000 steps](/images/eval-240000-17.png)

## Inference at 240,000 steps - 2
{{< audio src="/audio/eval-240000-18.wav" class="audio" >}}

![250,000 steps](/images/eval-240000-18.png)

# Training Round Two

In this round of training, my model quickly reached something like alignment, although it remains imperfect. The "alignment" line does not run straight, without break, and directly from SW to NE corner of the spectogram. However, the near-alignment achieved in this round of training means that inference performed on this model sees greater success than in the previous round. 

## 20,000 Steps

{{< audio src="/audio/step-20000-audio.wav" class="audio" >}}

![20,000 steps](/images/step-20000-align.png)

## 40,000 Steps

{{< audio src="/audio/step-40000-audio.wav" class="audio" >}}

![40,000 steps](/images/step-40000-align.png)

## 58,000 Steps

{{< audio src="/audio/step-58000-audio.wav" class="audio" >}}

![58,000 steps](/images/step-58000-align.png)

## 140,000 Steps

{{< audio src="/audio/step-140000-audio.wav" class="audio" >}}

![140,000 steps](/images/step-140000-align.png)

# Inference Round Two 

Here, SOOTHER's voice becomes more coherent, but there are still many problems, including: 
- The "stop" intuition is missing; all audio files are the same length and contain many seconds of silence at the end or an echoing noise
- The pacing is off -- the algorithm doesn't understand how to pace its speech
- As a result of the above, words collapse, expand, and get snuffed out.


## 61,000 Steps

{{< audio src="/audio/eval-61000-1.wav" class="audio" >}}

{{< audio src="/audio/eval-61000-2.wav" class="audio" >}}

## 168,000 Steps

{{< audio src="/audio/eval-168000-0.wav" class="audio" >}}

{{< audio src="/audio/eval-168000-1.wav" class="audio" >}}

{{< audio src="/audio/eval-168000-2.wav" class="audio" >}}

{{< audio src="/audio/eval-168000-3.wav" class="audio" >}}

{{< audio src="/audio/eval-168000-4.wav" class="audio" >}}

In conclusion, SOOTHER doesn't really know how to speak yet, but SOOTHER yet will speak :) 
