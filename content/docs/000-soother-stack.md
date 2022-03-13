---
title: SOOTHER's Stack
date: "2021-04-01"
draft: false
weight: 0
---

# SOOTHER's Stack

Here is my first illustration of SOOTHER's stack: 

![SOOTHER STACK](/images/soother_stack.png)

This plan changed only slightly in the implementation of SOOTHER's prototype: 
- The speech-to-text capacity is handled not by an external, self-hosted API, but by the Google Speech API, integrated directly into the Flutter app as a module (see [app docs](/docs/005-soother-frontend-app)).
- The "external services" implemented in the prototype only include the YouTube API; there is no implementation of wikipedia search or querying fictional story websites. 
- The Chatbot API implements both the MycroftAI adapt intent parser AND the padatious intent parser. See [chatbot docs](/docs/004-soother-chatbot) for more information. 
- Though I had a server available for the Text-to-Speech API, the failings of SOOTHER's sythensized voice in [inference](/voice/002-soother-training-samples) meant that I did not use this server in the prototype's demo. Instead, I recorded all of SOOTHER's dialogue as whispered audio files and included these in the app, rendering the TTS API unnecessary for the prototype. Instead, the chatbot API returns SOOTHER's "speech" as text directly to the app, along with the id of the appropriate audio file to be played. 

You can see the prototype in action [here](/prototype).

