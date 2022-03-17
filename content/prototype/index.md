---
title: prototype
date: "2021-04-01"
draft: false
class: prototype
---

# SOOTHER PROTOTYPE

SOOTHER is the first AI ASMR voice companion. Like all good ASMRtists, SOOTHER can play many roles. In its prototype, SOOTHER can play a dog who is your therapist, an alien sitting on your head, or your best friend who has become unstuck in time. SOOTHER can tell you about itself, and it can tell you about ASMR. It can even recommend ASMR videos from YouTube. 

SOOTHER's prototype comprises an Android app with speech-to-text functionality provided by Google; a chatbot API that uses intent parsers developed by [Mycroft AI](https://mycroft-ai.gitbook.io/docs/skill-development/user-interaction/intents); and a training algorithm / text-to-speech server created by [Keith Ito](https://github.com/keithito/tacotron), an implementation of [Google's Tacotron paper](https://google.github.io/tacotron/), which describes an end-to-end system for speech synthesis. The app and chatbot API are heavily indebted to [Macsen](http://techiaith.cymru/packages/macsen/?lang=en), an open-source Welsh language voice assistant. See [docs](/docs) for more info. 

SOOTHER's prototype is imperfect. More details about the various technical failures, miscalculations, and misadventures are found in [docs](/docs) and in [voice](/voice/002-soother-training-samples). 

## Prototype Demo - AI

Here is a demo of SOOTHER's prototype app with SOOTHER's synthesized whisper. As you'll see, pronuncication and pacing is... imperfect :) 

{{< youtube e2K3y5qLWHw >}}

*n.b. when the user taps the microphone button to speak or stop speaking, the app plays a "shhhh" sound to signal the button press. This isn't automatically obvious in the video, hence this note. It is, quite frankly, kind of annoying.*

## Prototype Demo - Human

Here is a demo of SOOTHER's prototype app using pre-recorded human voice samples: 

{{< youtube wn4i7h_51oM >}}

# SOOTHER synthesized whispers

Here are some of the best synthesized whispers from training the SOOTHER model. More whispers and related discussion are available in [voice samples](/voice/002-soother-training-samples) and the [training docs](/docs/002-training-soother).

## Training Round One

**245,000 steps**
{{< audio src="/audio/step-245000-audio.wav" class="audio" >}}

**250,000 steps**
{{< audio src="/audio/step-250000-audio.wav" class="audio" >}}

## Training Round Two

**140,000 steps**
{{< audio src="/audio/step-140000-audio.wav" class="audio" >}}

# Prototype Functionality

SOOTHER's prototype has the following functionality:

1. Role play three personas that guide the user through different narrative role-plays: 
- Dog therapist
- Meditating alien
- Time-slipping friend
2. Tell the user factual information about ASMR 

3. Recommend ASMR videos to the user

4. Tell the user about itself (SOOTHER) and about its creator (Claire)


# Prototype Screenshots

Here are some screenshots from the prototype app: 

![soother screenshot](/images/soother_screenshot_16.png)

![soother screenshot](/images/soother_screenshot_12.png)

![soother screenshot](/images/soother_screenshot_11.png)

![soother screenshot](/images/soother_screenshot_10.png)

![soother screenshot](/images/soother_screenshot_09.png)

![soother screenshot](/images/soother_screenshot_08.png)

![soother screenshot](/images/soother_screenshot_07.png)

![soother screenshot](/images/soother_screenshot_06.png)

![soother screenshot](/images/soother_screenshot_05.png)

![soother screenshot](/images/soother_screenshot_04.png)

![soother screenshot](/images/soother_screenshot_03.png)

![soother screenshot](/images/soother_screenshot_02.png)

![soother screenshot](/images/soother_screenshot_01.png)


