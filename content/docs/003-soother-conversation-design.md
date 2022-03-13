---
title: SOOTHER Conversation Design
date: "2021-04-01"
draft: false
weight: 3
---

# SOOTHER Conversation Design 

After finalising SOOTHER's [concept](/concept), I mapped out the basic conversational flows for SOOTHER's prototype in Figma. 

![Soother Conversation Flow 1](/images/soother_conversation_001.png)

![Soother Conversation Flow 2](/images/soother_conversation_002.png)

![Soother Conversation Flow 3](/images/soother_conversation_003.png)

Here is an early explanation of the SOOTHER skills that are included in these diagrams: 

1. Host Selection Skill: 
	- The user will first be prompted to select the "host" for their experience. The options are: (a) dog therapist (b) alien sitting on head (c) friend slipping through time
	- The host will provide the user with a variety of options for their time together. These include (a) a host-specific role-play (b) ASMR info and experience (c) a menu of other options
2. Host role-play
	- Each host come with its own role-play skill:
		- The "alien" guides the user through the story of its people and its relationship with humans, telling several myths in the process. 
		- The "dog therapist" guides the user through a modification of the ELIZA chatbot routine (early therapist chatbot developed by M.I.T.).
		- The "best friend slipping through time" talks to the user about their day and relays information about her journey
3. ASMR Skill 
	- The ASMR skill has two parts: 
		- Recommend ASMR content from YouTube based upon keywords supplied by the user
			- This skill will communicate with the YouTube Search API and return a link to the recommended content in SOOTHER's chat interface
		- Provide information about ASMR (read from Wikipedia)
			- The skill will read the ASMR wikipedia article for users
			- *n.b. this skill is unimplemented!*
4. Menu Skill
		- Each host offers the user the ability to hear a menu of options. Included in this menu is (a) a list of the different hosts, enabling the user to change their host (b) information about SOOTHER (c) the ASMR skill 
5. SOOTHER info skill 
	- This skill gives the user information about SOOTHER and SOOTHER's creation. 
	- The skill includes different information about: 
		- SOOTHER's "behind the curtian" persona (see SOOTHER PERSONA)
		- Information about Claire, Nesta Italia, Celi, and superbudda
		- Information about SOOTHER's technology (links to github and documentation)
		- Information about data policy (links to data policy) *unimplemented*
		- Information about ASMR (links to ASMR skill)
6. "Help" skill
	- Finally, SOOTHER should also handle requests for "help" from the user and have various response to misunderstood or incomprehensible user inquiries. 
	- I would fold all of these functions into a "help" skill. 
	- Upon receiving a response that SOOTHER does not understand, the "HELP" skill should be triggered, with SOOTHER requesting the user clarify the response, either via voice or typing in the SOOTHER chat (bypasisng the STT API). 
	- As a rule, SOOTHER should ask the user to clarify three times before either (a) picking a branch for the user or (b) directing the user to the main menu (depending on the particular skill)
	- SOOTHER should also have a list of "prohibited words" to which it has a response about inappropriate language (this should be playful but also firm)
	- I'm not completely sure how this should be structured and could definitely use feedback in terms of how to handle this skill 

In the prototype of SOOTHER, all of these skills exist with the exception of the Help skill, which was integrated into each individual skill in the [chatbot implementation](/docs/004-soother-chatbot). 

This initial sketch of the SOOTHER conversation flows was helpful for fleshing out the different angles of my concept, but ultimately, I ended up drafting the final prototype conversations in the chatbot code as I wrote it. The Figma interface is unwieldy for narrative composition, and, in the end, much of what I wrote depended on other contextual information included in the codebase itself.

I know from external chatbot research that the transition from design to implementation is a pain point throughout the entire chatbot industry. It seems even *more* difficult to transfer the flow of creative narrative design into a code-based structure than the flow of, for example, customer assistance conversations. I don't have any solution for this, but it's interesing to consider. What would be an optimal tool for composing "forking" narratives? And -- further -- how might they best be represented beyond a chatbot paradigm? I imagine this is also an interesitng subject of inquiry for those wanting to transfer, for example, the dialogue of a slack or discord chat into a publishable form. 

I would like to try Google's Voiceflow, which comes heavily recommended by conversation designers in the industry, for creative conversation design. If I do so, I will link my results here. For now, more information about conversation design in the prototype is included in the discussion of SOOTHER's [chatbot](/docs/004-soother-chatbot).