---
title: About
date: "2021-04-01"
draft: false
---

# ABOUT SOOTHER 

SOOTHER is the first AI ASMR voice companion. Like all good ASMRtists, SOOTHER can play many roles. In its prototype, SOOTHER can play a dog who is your therapist, an alien sitting on your head, or your best friend who has become unstuck in time. SOOTHER can tell you about itself, and it can tell you about ASMR. It can even recommend ASMR videos from YouTube. 

SOOTHER's prototype comprises an Android app with speech-to-text functionality provided by Google; a chatbot API that uses intent parsers developed by [Mycroft AI](https://mycroft-ai.gitbook.io/docs/skill-development/user-interaction/intents); and a speech synthesis system + text-to-speech server created by [Keith Ito](https://github.com/keithito/tacotron), an implementation of [Google's Tacotron paper](https://google.github.io/tacotron/), which describes an end-to-end system for speech synthesis. The app and chatbot API are heavily indebted to [Macsen](http://techiaith.cymru/packages/macsen/?lang=en), an open-source Welsh language voice assistant. See [docs](/docs) for more info. 

SOOTHER's prototype is imperfect. More details about the various technical failures, miscalculations, and misadventures are found in [docs](/docs) and in [voice](/voice/002-soother-training-samples). The single biggest issue with SOOTHER's prototype is that the whisper speech model, which whispers with the perfect verve in training, fails in inference. However, with a bit more care, training, and gas (e.g. $$$), SOOTHER will speak surely in an uncanny whisper. 

SOOTHER was created by Claire Tolan in 2021 during a S+T+ARTS CITY OF THE FUTURE residency in Torino, IT hosted by [Nesta Italia](https://www.nestaitalia.org). SOOTHER was undertaken with the generous support of Nesta Italia; [Celi / h-farm](https://www.h-farm.com/en), a language technology company; and [superbudda](https://www.superbudda.com/), a recording studio. As of March 2022, Claire Tolan is re-training SOOTHER's whisper, re-coding SOOTHER's chatbot, designing a website to host SOOTHER's interactions (instead of an Android app), and, most importantly, overhauling the concept. Expect us. 

"Recording was completed at superbudda's beautiful studio in April 2021, a very strange time when I walked home through empty streets before the 22h coronavirus curfew and slept in the apartment with inherited mathematics on the chalkboard. The light was yellow from venetian blinds. I whispered for up to 12 hours a day in the little booth, logging approximately 80 hours of source material and damaging, perhaps permanently, my vocal cords. The chatbot and APIs were programmed between April and June 2021 with advice from Celi, who provided invaluable resources to me, when I knew nothing of conversation design or chatbots. SOOTHER's voice model was largely trained in June 2021. In one treasured memory, I hotspotted my thinkpad x1 carbon to ssh into my 4-GPU, 32-CPU AWS instance & monitor speech model training outside the Vienna airport, in the bright sun of high noon, before going for a coronavirus test at the hotel across the car park. In those days, they jabbed the swab all the way up your nose, into a cavity I had forgotten existed." -- CLAIRE TOLAN 

![SOOTHER source spreadsheet](/images/soother02.png)

![SOOTHER training monitoring](/images/soother01.png)

[Claire Tolan](https://cst.yt) is an artist. She conceptualised the project; recorded the voice of SOOTHER; edited the sound; trained SOOTHER's speech models; wrote SOOTHER's prototypical role-plays; and programmed the SOOTHER APIs and app.

The hand-writing font used throughout the website and in SOOTHER's prototype was created by [Milena Georgieva](https://milenageorgieva.xyz/) from samples of Claire Tolan's handwriting. The handwriting font and color palate were initially designed by Milena Georgieva for [CICADA GAMES](https://cst.yt/training/projects/cicada-games/), an augmented ASMR audio play, also created by Claire Tolan in 2021 and produced by [Czirp Czirp](https://czirpczirp.cc). 