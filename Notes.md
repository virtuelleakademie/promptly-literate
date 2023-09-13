## Overview
1) Keep human in the loop
2) Prompting, prompting, prompting: this workshop is mainly about prompting. We
   can think about prompting as a way of "programming" LLMs, i.e. getting LLMs
   to do what we want them to do.


👉🏼 [OpenAI best practices](https://platform.openai.com/docs/guides/gpt-best-practices/six-strategies-for-getting-better-results)

## Prompting

- A brief description of the assistant
- Personality traits of the assistant
- Instructions or rules you would like the assistant to follow
- Data or information needed for the model, such as relevant questions from an FAQ

Tactics:

- Include details in your query to get more relevant answers
- Ask the model to adopt a persona
- Use delimiters to clearly indicate distinct parts of the input
- Specify the steps required to complete a task
- Provide examples
- Specify the desired length of the output

### Provide reference text
GPTs can confidently invent fake answers, especially when asked about esoteric topics or for citations and URLs. In the same way that a sheet of notes can help a student do better on a test, providing reference text to GPTs can help in answering with fewer fabrications.

Tactics:

- Instruct the model to answer using a reference text
- Instruct the model to answer with citations from a reference text

### Split complex tasks into simpler subtasks
Just as it is good practice in software engineering to decompose a complex system into a set of modular components, the same is true of tasks submitted to GPTs. Complex tasks tend to have higher error rates than simpler tasks. Furthermore, complex tasks can often be re-defined as a workflow of simpler tasks in which the outputs of earlier tasks are used to construct the inputs to later tasks.

Tactics:

- Use intent classification to identify the most relevant instructions for a user query
- For dialogue applications that require very long conversations, summarize or filter previous dialogue
- Summarize long documents piecewise and construct a full summary recursively

### Give GPTs time to "think"
If asked to multiply 17 by 28, you might not know it instantly, but can still work it out with time. Similarly, GPTs make more reasoning errors when trying to answer right away, rather than taking time to work out an answer. Asking for a chain of reasoning before an answer can help GPTs reason their way toward correct answers more reliably.

Tactics:

Instruct the model to work out its own solution before rushing to a conclusion
Use inner monologue or a sequence of queries to hide the model's reasoning process
Ask the model if it missed anything on previous passes

### Use external tools
Compensate for the weaknesses of GPTs by feeding them the outputs of other tools. For example, a text retrieval system can tell GPTs about relevant documents. A code execution engine can help GPTs do math and run code. If a task can be done more reliably or efficiently by a tool rather than by a GPT, offload it to get the best of both.

Tactics:

Use embeddings-based search to implement efficient knowledge retrieval
Use code execution to perform more accurate calculations or call external APIs
Give the model access to specific functions

### Test changes systematically
Improving performance is easier if you can measure it. In some cases a modification to a prompt will achieve better performance on a few isolated examples but lead to worse overall performance on a more representative set of examples. Therefore to be sure that a change is net positive to performance it may be necessary to define a comprehensive test suite (also known an as an "eval").

Tactic:

Evaluate model outputs with reference to gold-standard answers


## Tactics
Each of the strategies listed above can be instantiated with specific tactics. These tactics are meant to provide ideas for things to try. They are by no means fully comprehensive, and you should feel free to try creative ideas not represented here.