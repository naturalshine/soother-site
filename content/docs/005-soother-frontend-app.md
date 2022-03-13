---
title: SOOTHER App
date: "2021-04-01"
draft: false
weight: 5
---

# SOOTHER Frontend App

## Flutter Forks

SOOTHER's frontend app is a simple fork of [Macsen's Flutter app](https://github.com/techiaith/macsen-flutter). 
Macsen is an [open-source Welsh-language voice assistant](http://techiaith.cymru/packages/macsen/?lang=en), to which SOOTHER is heavily indebted. Flutter is an app-develoment platform, developed by Google, which makes it possible to develop iOS and Android apps using the same codebase. Importantly, at the time of SOOTHER's development, the age of the code in the Macsen Flutter repo made it incompatible with the newer version of iOS on my iphone, leading me to develop SOOTHER's prototype only for Android. Time limitations prevented me from updating the code. 

## SOOTHER Customisation

Significant changes to the Macsen Flutter codebase include: 
- Speech-to-text capability parses the user's utterance and sends the resulting text to the [chatbot API](/docs/004-soother-chatbot) to determine the appropriate response. In Macsen, STT is handled by a separate API, whereas in SOOTHER, it is performed with the `speech-to-text` [Flutter module](https://pub.dev/packages/speech_to_text), which queries Google's STT servers.
- Re-skinning of the app to implement SOOTHER's design, see [prototype](/prototype).
- Finally, pre-recorded dialogue files take the place of a Text-to-speech API due to the [malfunctioning of SOOTHER in inference](/voice/002-soother-training-samples).

## SOOTHER Flutter Github
I need to remove some environment variables from the SOOTHER Flutter codebase; when I get around to doing this, I will make the github repo public and link it here. 

See [here](/next-gen) for more discussion about SOOTHER's app and future interface changes. 