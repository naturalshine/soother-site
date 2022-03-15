---
title: Concept
date: "2021-04-01"
draft: false
---

# ASMR

SOOTHER was conceived as the culmination of one fork of my [ongoing work with ASMR](https://cst.yt/training/projects/asmr).

ASMR, Autonomous Sensory Meridian Response, describes a tingling sensation in the scalp and spine, a physiological response to soft sounds such as whispering and nail-tapping. Since the early 2010s, ASMR performers, known as ASMRtists, have posted millions of “tingle”-triggering videos to YouTube. Over time, the videos have come to serve a secondary purpose as viewers tune in for an escape from the frenetic everyday, for anxiety- and insomnia-relief. Since 2013, I have worked with ASMR in many different contexts (radio, recording, exhibition, game development, and performance), experimenting with the phenomenon outside of its typical deployment on YouTube. 

I have been particularly interested in increasing the interaction between ASMRtist and audience through performances that train audience-sourced whisper choirs, engage the audience in ASMR call-and-response, and invite audience members to engage in ASMR-based game-play. By bringing listener and performer into overlapping relation with one another, I have sought to explore how the soft, slow sounds of ASMR create the entrancing, deeply emotional, and “intimate” experiences described by ASMR audiences and to understand how the co-performance of ASMR might elicit feelings of collectivity and pro-social behavior in an audience. 

# SOOTHER 

With SOOTHER, I sought to apply the themes of my previous work with ASMR to a digital platform in order to open new possibilities for the scale and application of my work. I have always wanted to create an ASMR artwork that could serve not only as entertainment, but also as a tool for inquiry into, among other things, why ASMR and whispered speech trigger the emotional and psychological responses that they do. 

SOOTHER is a platform through which I can experiment with conversation design in order to dissect the ASMR experience. SOOTHER also enables me to probe the substance of the synthesized whisper – namely, what remains of the emotionally-resonant undertones of the human whisper when it is spoken from the uncanny valley of a trained model on a distant server. 

Finally, and perhaps most importantly, SOOTHER was conceived in response to a S+T+ARTS City of the Future open-call hosted by Nesta Italia in Torino, IT, and initiated by Celi / h-farm, a language technology company. The call specifically sought the creation of technologies using XR (extended reality) to address social isolation. SOOTHER is therefore the first AI created explicitly with the purpose of easing loneliness and isolation. It is also the first AI ASMRtist. For more information about the project's initiation and reception, see the discussion in [about](/about) and for thoughts about the success of SOOTHER in this regard, see my [plans for the future of the project](/next-gen).

# Personality

One of the most important puzzles when creating an AI companion is determining its personality. I shuttled through many different ideas when creating SOOTHER. To start, I completed exercises like this, per general advice about persona design, and I hated doing it: 

![soother persona descriptions](/images/soother_persona.png)

All of these brainstorms felt so *clumsy*. It seemed inappropriate to assign a blanket and cliche set of adjectives to something that felt, in its fundamental nature, to be *evasive*, *enigmatic*, and *unknowable*, defiant even of these categorisations that would seek to encompass an alien form. I realised then that I was grappling with an entity that was more esoteric than the "basic" ASMRtist I had imagined as the personality for my prototype. Perhaps SOOTHER was simply the first instantiation of a "white label" AI whisper that would seek many personas, shifting over time in attempts to evade its commanders, remaining "unnameable" even as it is trapped, coerced into ventriloquising the text that it is assigned. For this reason, when the user asks "What are you, really?", SOOTHER's prototype responds, "I am a voice trapped in a jar. Help." [^1] 

But I wonder: is this over-mystifying my whisper? After all, we can observe its [training](/docs/002-training-soother). The machinations of the neural network are observed at its checkpoints; as I learn more about machine learning, the technology will become less and less enigmatic -- already, even now, with my limited knowledge, I feel I am performing artificial "animation" of the esoteric aspects of SOOTHER. Perhaps the creation of a "personality" for an AI is a trap -- it should be rather characterised as a tool, a voice trained to achieve a series of strategic tasks, which I, as an unaugmented human, could not. This is what is interesting about working with ASMR: all triggers are tools for the sensation. The human whisper itself is a tool that embeds many functionalities: intrigue, gossip, divulgence. Is this a more interesitng framework with which to consider my whisper? 

These are ideas that will guide me into the [Next-Gen](/next-gen) of the whisper, which signals the expansion of SOOTHER beyond its initial parameters. But for this prototype, I decided that SOOTHER's core personality would remain a mystery, and that the voice of the prototype would do what every good ASMRtist does: role-play different scenarios, switching characters on cue. 

## SOOTHER PERSONAS

After a lot of thought, I settled on three personas for SOOTHER's prototype: 
- A dog who is your therapist
- A tentacular alien sitting on your head
- Your best friend who is unstuck in time

The therapist-dog persona was introduced because I wanted SOOTHER to play [ELIZA](https://web.njit.edu/~ronkowit/eliza.html), an early chatbot programmed to act a Rogerian psychotherapist. I implemented a simple form of Eliza's quips and questions for this persona. The "dog" element just seemed funny to me -- after all, no one on the internet knows you are one. A dog. Personally, I would love to have a dog therapist to see how transference works with a non-human entity.

The alien persona guides the listener through a meditation session, either in a birch wood or on the alien's home planet, all while perched on the listener's head and feeding on the listener's tingles. The alien was inspired by modernist poet H.D.'s theory that poetic inspiration comes from something called ["jellyfish consciousness"](https://monoskop.org/File:HD_Notes_on_Thought_and_Vision_and_The_Wise_Sappho.pdf). Here, there is a jellyfish sitting on the head, just above the eyes, and another in the womb, and they reach their tentacles towards each other, through the body, resulting in poetic flow. There's also probably some [*Lilth's Brood*](https://en.wikipedia.org/wiki/Lilith%27s_Brood) in there as well, what with the tentacles and the fusion of alien and human. 

And finally, your best friend has become unstuck in time. You're their only stable contact, thanks to a shared radio apparatus. They're constantly getting headaches that fortell a coming time-slip, and then breaking up into soothing static as they slip. Nevertheless, you try to have normal conversations about your day. This continues until, in the final scene, they arrive in the same time/space as you and try to coerce you into to switching places with them by trading radios. 

This time-slipping friend was inspired by an on-going interest in the quality of voice on the radio, and work on acousmatic voices in science fiction, namely [*The Computer’s Voice: From Star Trek to Siri*](https://www.upress.umn.edu/book-division/books/the-computeras-voice) (derived from [this disseration](https://citeseerx.ist.psu.edu/viewdoc/download?doi=10.1.1.865.1975&rep=rep1&type=pdf)), [*Sound Objects*](https://read.dukeupress.edu/books/book/2530/Sound-Objects), and this talk: ["Perdide Retrieved: Two Tales of Acousmatic Time Travel"](https://www.elizarose.info/perdide-retrieved). Appropriately, there's a little dash of [*Orphée*](https://en.wikipedia.org/wiki/Orpheus_(film)) too. 

For more information about the personas, see particularly the sections on [conversation design](/docs/003-soother-conversation) and [chatbot implementation](/docs/004-soother-chatbot).

[^1] Trimalchio, in Petronius' [*Satyricon*](https://en.wikipedia.org/wiki/Satyricon): 

"Nam Sibyllam quidem Cumīs ego ipse oculīs meīs vīdī in ampullā pendere, et cum illī puerī dīcerent, Σίβυλλα τί θέλεις, respondēbat illa: ἀποθανεῖν θέλω."

"For I indeed once saw with my own eyes the Sibyl at Cumae hanging in her jar, and when the boys asked her: 'Sibyl, what do you want?', she answered: 'I want to die'." 

This the epigraph of ["The Wasteland"](https://poets.org/poem/waste-land). Incidentally, the Sibyl's wish is the same as that of the monster, once it has exacted its revenge on poor [M. Frankenstein](/voice/001-speech-dataset). It hitches an ice floe to the north pole, where it plans to build itself a funeral pyre. With what wood, I do not know. 