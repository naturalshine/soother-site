---
title: Chatbot API
date: "2021-04-01"
draft: false
weight: 4
---

# Chatbot API

To implement SOOTHER's chatbot, I forked [Macsen's Chatbot](https://github.com/techiaith/macsen-sgwrsfot). Macsen is an open-source [Welsh Langugage Voice Assistant](http://techiaith.cymru/packages/macsen/?lang=en) that comprises several APIs and a front-end Flutter app, which I forked for [SOOTHER's prototype app](/docs-005-soother-frontend-app).It was a fun challenge both to parse the code AND to translate everything from Welsh! 

Chatbots comprise two important components. There is the server itself, which, in this case, is [cherrypy](https://docs.cherrypy.dev/en/latest/), and there is something called an intent-parser. An intent parser looks at the user's utterance and determines what they are asking for. To determine this, it queries a library of pre-defined "skills" and selects the one that is most relevant to the user's utterance in order to determine the chatbot's response. For example, a "skill" that handles questions about "ASMR" might be tagged with key words/phrases such as "what is ASMR", "what's Autonomous Sensory Meridian Response", "what are tingles", etc. If the intent parser matches these keywords in the user's utterance, it will select this "skill" to answer the user. 

Macsen's chatbot API is a collection of skills that perform simple question-and-answer (or "FAQ") behaviors. It includes a skill to query Wikipedia, a skill to tell the time, and a skill to tell the weather. This was a great starting point for me, but importantly, it was lacking an important requirement for SOOTHER's conversational functionality: context. In order to have a "conversation" with a chatbot, the chatbot needs to be able to remember "where" you are in the conversation, and to understand the conversational antecedents that a user might be referring to. In an FAQ chatbot without context, the user asks the chatbot a question, to which the chatbot replies. The user *cannot* continue the conversation from that point, because the chatbot retains no memory of the user's first question. Therefore, dialogue is not possible. 

The Macsen chatbot uses a non-contextual intent parser developed by [Mycroft AI](https://mycroft.ai/) called [Adapt](https://mycroft-ai.gitbook.io/docs/mycroft-technologies/adapt). At this point, I knew very little about other chatbot frameworks, and because I was limited in time, I was determined to make Macsen's codebase work for me. I therefore introduced a second-level of intent-parsing using another Mycroft-developed intent parser, [padatious](https://mycroft-ai.gitbook.io/docs/mycroft-technologies/padatious), which allows for context retention. 

## Chatbot API Github

My chatbot API code is far from elegant and far from bugless -- it is a complete hack! It works about 80% of the time, and when it doesn't work, it goes into recursion or just freaks out. Instead of removing the layer of "adapt" intent parsing implemented in the initial Macsen chatbot, I have the user request hit adapt first (*unless* there's a context variable set, in which case it does something even MORE stupid) before shuttling the request to a padatious-controlled mechanism. It's dumb and brittle, though for a prototype, it worked well enough. However, one of my first priorities for the [next iteration of SOOTHER](/next-gen) is re-architecting the chatbot. 

With that disclaimer, I share the [chatbot github](https://github.com/naturalshine/soother-chatbot), the readme of which contains more information.

## SOOTHER Chatbot Screenshots

Finally, below are some screenshots from the chatbot codebase, so you can see how dialogue and intents are implemented. For information about personalities and the concept behind them, see [concept](/concept).

Here is the implementation of the "ASMR skill". You can see that I'm importing both "adapt" and "padatious" here [beware, here be dragons!]:

![soother asmr](/images/soother_asmr_skill.png)

Here are the keywords and some code from the initial personality skill, which asks the user what "role" they want SOOTHER to play: 

![soother personality](/images/soother_personality_keywords.png)

![soother personality](/images/soother_personality_chatbot.png)

Here are the keywords, intent construction, and code from the "dog therapist" skill, which is a simplistic implementation of the ELIZA chatbot (see: [concept](/concept)):

![soother dog](/images/soother_dog_keywords.png)

![soother dog](/images/soother_dog_intents.png)

![soother dog](/images/soother_dog_skill.png)

And finally, here are keywords, intent construction, and code from the "head-sitting alien meditation":

![soother alien](/images/soother_alien_keywords.png)

![soother alien](/images/soother_alien_intents.png)

![soother alien](/images/soother_alien_chatbot.png)

