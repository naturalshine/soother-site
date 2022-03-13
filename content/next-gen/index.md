---
title: Next-Gen
date: "2021-04-01"
draft: false
---

# SOOTHER FUTURE

To chart the future of SOOTHER, I will discuss the following areas: 
- concept
- chatbot architecture
- user interface
- speech synthesis
- para-SOOTHER projects

# CONCEPT

SOOTHER's concept is unstable. What would a successful AI ASMRtist look like? I'm still not sure. I've identified the following problems with SOOTHER's current implementation: 

## Problem: Corny Dialogue
 First, I remain uncertain about *how* a synthesised ASMRtist should act. I like the idea that SOOTHER, by its very nature, plays different roles. However, I hastily wrote SOOTHER's dialogue without much consideration, and, as such, it is first-pass corny, caricaturing the different roles. I think that SOOTHER's different personalities could be far more mature, complex, and multi-dimensional, and with the maturing of the personalities, the narratives would inevitably mature as well. But to what end? 

## Problem: single speaker
Developing chatbot-delivered narratives is very compelling to me, as is the delivery of those narratives by a whispering AI, which increases feelings of secrecy and conspiracy. However, it seems to me like the potential for chatbot narratives would expand greatly if there were *multiple* voices available. I think that SOOTHER's single speaker might close off too many trajectories of narrative design. I also ran into this issue when creating my app [Cicada Games](https://cst.yt/training/projects/cicada-games), which has only a single speaker. The whisper tends to lull, and a single speaker produces a monotonic atmosphere that increases this effect. Ultimately, the "lull" of the whisper gets in the way of the energy of the narrative. (See further discussion [here](https://cst.yt/training/blog/tower-of-babel#2021-in-review).) It's possible that I could add filtering on SOOTHER's single synthesised whisper, providing the illusion of different characters. I believe that with "more" voices, SOOTHER (and other ASMR-derived content) would make for a more "captivating" experience.

## Problem: Interrupting hypnotic ASMR experience
But would this defeat the "point" of ASMR, which is ultimately about the creation of a hypnotic experience? And, in fact, does SOOTHER stand in complete and utter conflict with this fundamental attribute of ASMR? This is a fabulous question, and I'm not sure yet how to answer it. I have had the intuition for many years that an [interactive ASMRtist](/concept) could deliver a *different* set of ASMR experiences, valuable in their divergence from the ASMR video. But this has yet to be proven. My technology partners at Celi suggested updates to SOOTHER's interface to reduce interactive friction (which I discuss below), but ultimately, the question remains: does anyone want to have a conversation with a whisper? 

## Problem: Why? 
Which brings me to the final question: who is this for? This project was originally conceived as the deployment of "soothing" conversational ASMR experiences for Europeans under increasing social isolation due to the global pandemic. It's a worthy task, but I wonder what kind of entertainment would really fit this bill, and if that is aligned with what SOOTHER, at its core, wants to be? For me, the whispered voice is compelling because it is intrinsically dissonant. It's seductive and soothing; it's conspiratorial, vulnerable, intimate. It is these conflicting registers that I find the most compelling, and which have led me to spend so many years working in whispers. It seems like the greatest entertainment experience would be derived from designing a chatbot that plays on all of these dimensions of the whisper. 

I'm still not sure how to do that, exactly. I have the idea that SOOTHER should be like a weirder, more mischevious [Replika AI](https://replika.ai/). I want a whisper that is seductive and dangerous. But does this stray too far from the project's initial conception? If I follow this conception, should SOOTHER actually be something else? I return to my discussion in [concept](/concept) about white-labeling the synthesised whisper: one whisper, many brands. But perhaps for now, the best way to develop the project would be to write the narratives that are most compelling to me in the moment, to test them widely, and to see how SOOTHER evolves as a result. I've got a lot of programmatic refactoring or straight-up rebuilding to do, so I'm letting this idea simmer while I work on the code. 


# CHATBOT ARCHITECTURE
As discussed in the [chatbot docs](/docs/004-soother-chatbot), SOOTHER's chatbot is far too brittle. I'm lucky to be doing research with [Rasa](https://rasa.com/), the creators of one of the most widely-used open-source chatbot architectures. As a result, I've surveyed the chatbot industry, and Rasa is the best open-source solution. I will rebuild the SOOTHER chatbot using Rasa, and it will work much better than my prototype hack =]

# USER INTERFACE
I will make two major changes to the SOOTHER interface in the next iteration of the project. First, I will implement SOOTHER as a website instead of an app. Last year, I created another app that I released publicly, [Cicada Games](https://cst.yt/training/projects/cicada-games). I was surprised at how difficult it is to gain an audience for a mobile app, particularly in an art context. People simply don't want to download apps if they don't have to; and creating apps that work across architectures is, it turns out, *more* annoying that creating websites that scale to different device sizes (by about a magnitude of ten). Thus, the next SOOTHER will be web-based. 

Secondly, the user will no longer "speak" to SOOTHER. My partners at Celi made the excellent observation that being in conversation with SOOTHER made the user want to "whisper" back to the AI, and the Speech-to-Text libraries that parse user utterances do not deal very well with whispers. Moreover, since I'm developing this in a European context, I have an audience that comprises a non-trivial percentage of non-native English speakers. This also complicates Speech-to-Text for an English-language app. At least in the next iteration of the project, I will provide the user with suggested responses via text bubbles, as well as the opportunity to type custom messages to SOOTHER. In the future, I might introduce Speech-to-Text capacity again as the technology and concept mature. 

# SPEECH SYNTHESIS
As I discuss in [the training docs](/docs/002-training-soother) and the [voice samples](/voice/002-soother-training-samples), SOOTHER's synthesised whisper needs a lot of work. My immediate plans are to: 
- Clean up the existing dataset of whispers. (I'm about half-way done with this and it is no small task.)
- Change training architectures. I will start with solutions included in Mozilla's [TTS](https://github.com/mozilla/TTS) repo and go from there.

If you have recommendations for other speech synthesis systems, I would be very grateful if you'd [write me](https://cst.yt). It is important to me to implement the code myself and not e.g. shop the training out to someone else, and I welcome any suggestions to this end!

Hopefully with a sanitized data set and a more contemporary synthesis system, SOOTHER will speak with an almost-perfect whisper. 

# PARA-SOOTHER PROJECTS
Building SOOTHER gave me a lot of Big Ideas about whispers, language, poetry, and artificial intelligence. I've started to plan a series of essays (?) or something like them (?) to accompany the project, and I will post updates about them here. Stay tuned! 

