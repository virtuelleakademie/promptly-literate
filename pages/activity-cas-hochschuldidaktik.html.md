---
title: 'Activities: Learn Prompting'
description: |
  Basic programming techniques.
date: last-modified
date-format: 'DD MMM, YYYY'
author:
  - name: Andrew Ellis
    url: 'https://github.com/awellis'
    affiliation: 'Virtuelle Akademie, Berner Fachhochschule'
    affiliation-url: 'https://virtuelleakademie.ch'
    orcid: 0000-0002-2788-936X
license: CC BY
citation: true
bibliography: ../bibliography.bib
format:
  html:
    toc: true
    code-fold: true
    code-link: true
    callout-appearance: simple
    callout-icon: false
execute:
  cache: true
  keep-ipynb: true
  keep-md: true
  output: asis
  echo: false
code-annotations: select
---


Designing effective prompts to instruct LLMS to generate a desired output is referred to as _prompt engineering_. This activity will guide you through the process of creating prompts for LLMs.





## Prompting Guidelines

In this activity, you can explore various prompting guides for LLMs. They more or less all converge on the same set of techniques. You can then use these techniques to write your own prompts

OpenAI give a set of [{{< bi link >}} strategies](https://platform.openai.com/docs/guides/prompt-engineering/six-strategies-for-getting-better-results)  for using their models.


These include:

- writing clear instructions
- providing reference texts
- splitting tasks into subtasks
- giving GPT 'time to think'
- using external tools


Some general techniques are:

- **Numbered Steps:**: For sequential tasks, use numbered steps. This helps the model understand the sequence of actions.

- **Use delimiters:** To separate various parts of the prompt (e.g. `"`, \`,, `'`, `|`, `#`, ...).


- **Few-shot prompting:** Provide a few examples for guidance.
  
 
- **Give the LLM a role:** Make the model assume a role. E.g. act instruct the model to `act like a tutor` or `you are an expert programmer.`
  
  
- **Iterate and refine prompts:** Often, you won't get your desired result straight away. Improve your prompting strategy iteratively, and then once you are happy, choose your final prompt and use it in a new chat session.


Combining these techniques, a template prompt might look like this:

:::{.callout-tip}
## Template
1) Role: who is being simulated?
2) Task: what is to be done?
3) Steps: what are the steps to complete the task?
4) Context: what is the context of the task?
5) Goal: what is the goal of the task?
6) Format: what is the format of the output? How long should it be?
:::

Remember to structure your prompt in a way that is clear and easy to understand. You can use markdown to format your prompt, and you instruct the mode to format its response using markdown.


## Examples

### Adopt a persona



:::{.callout-note}
## {{< bi person >}} Prompt:
You are an expert on the topic of university education and didactics. Explain the concept of "flipped classroom" to a group of teachers. Use markdown to format your response. Keep you explanation concise and to the point.
:::

:::{.callout-warning collapse="true"}
## {{< bi robot >}} Output

<p>Certainly! The "flipped classroom" is an instructional strategy that inverts traditional teaching methods, delivering instructional content outside of the classroom and moving activities, including those that may have traditionally been considered homework, into the classroom. Below is a concise breakdown of this concept:</p>
<h2>Flipped Classroom: An Overview</h2>
<h3><strong>1. Pre-Class Learning:</strong></h3>
<ul>
<li><strong>Content Delivery</strong>: Instead of lecturing during class time, instructors provide students with materials (videos, readings, podcasts) to be accessed and understood before class.</li>
<li><strong>Student Engagement</strong>: Students engage with the content at their own pace, making notes and preparing questions.</li>
</ul>
<h3><strong>2. In-Class Activities:</strong></h3>
<ul>
<li><strong>Active Learning</strong>: Classroom time is dedicated to exercises, projects, or discussions that deepen understanding.</li>
<li><strong>Teacher Role</strong>: Instructors act more as facilitators or coaches, guiding students as they apply concepts and engage critically with the material.</li>
</ul>
<h3><strong>3. Benefits:</strong></h3>
<ul>
<li><strong>Enhanced Interaction</strong>: Increases interaction between students and teachers by freeing up class time for discussion and individual attention.</li>
<li><strong>Personalized Learning</strong>: Allows students to learn at their own pace outside of class, leading to a more personalized education experience.</li>
<li><strong>Critical Thinking</strong>: Encourages higher-order thinking skills as students apply, analyze, and evaluate content during in-class activities.</li>
</ul>
<h3><strong>4. Implementation Tips:</strong></h3>
<ul>
<li><strong>Start Small</strong>: Begin by flipping a single lesson or topic to see how it works for you and your students.</li>
<li><strong>Provide Clear Instructions</strong>: Make sure students understand their responsibilities in the flipped classroom model.</li>
<li><strong>Feedback and Flexibility</strong>: Collect feedback from students and be prepared to adjust strategies as needed.</li>
</ul>
<h3><strong>5. Challenges:</strong></h3>
<ul>
<li><strong>Access to Resources</strong>: Ensuring all students have access to pre-class materials and technology.</li>
<li><strong>Student Compliance</strong>: Making sure students come prepared to engage in class activities.</li>
<li><strong>Adapting Teaching Styles</strong>: Requires teachers to shift from traditional lecturing to facilitating and guiding.</li>
</ul>
<p>The flipped classroom model fosters a collaborative learning environment where students take more control of their learning, and teachers provide support and guidance rather than direct instruction. This approach can lead to more engaging and effective learning experiences when implemented thoughtfully.</p>


:::

Now let's try a different persona:



:::{.callout-note}
## {{< bi person >}} Prompt:
You are 13 year old high school student. Explain the concept of "flipped classroom" to your friends. Use markdown to format your response. Keep you explanation concise and to the point.
:::

:::{.callout-warning collapse="true"}
## {{< bi robot >}} Output

<p>Hey friends! 📚✨</p>
<p>So, I learned about this cool concept called the <strong>"flipped classroom."</strong> Let me break it down for you:</p>
<h3>What's a Flipped Classroom? 🔄</h3>
<p>In a <strong>traditional classroom</strong>, we sit through a lecture at school, take notes, and then go home to do homework - you know, the exercises and practice problems.</p>
<p>In a <strong>flipped classroom</strong>, it's like everything is... well, flipped! 🙃</p>
<ul>
<li><strong>At Home</strong>: You watch video lectures or read materials. Basically, you learn the new stuff on your own time, at your own pace.</li>
<li><strong>In School</strong>: Instead of listening to the teacher talk, you do activities, projects, or discussions. This is where you apply what you learned at home and get help on the tricky parts.</li>
</ul>
<h3>Why It's Cool? 😎</h3>
<ul>
<li><strong>Learn at Your Own Pace</strong>: You can pause or replay the video lectures as many times as you need.</li>
<li><strong>More Help When You Need It</strong>: Since you're doing the "homework" in class, the teacher can help you right when you're stuck.</li>
<li><strong>Interactive Classes</strong>: Class time is more fun and engaging because it's all about doing stuff rather than just listening.</li>
</ul>
<h3>The Catch? 🤔</h3>
<p>You gotta be disciplined. Since you're learning new content at home, you need to make sure you actually watch the videos or do the readings before class.</p>
<p>That's pretty much it! The flipped classroom flips the way we learn, making it more interactive and personalized. Pretty neat, right?</p>
<p>Catch you later! 🌟</p>


:::



### Reference texts

:::{.callout-note}
## {{< bi person >}} Prompt:
You will be provided with 

- context: documents delimited by **triple quotes**
- a question 

Your task is to provide a simplified answer to the question using only the provided document and to cite the passage(s) of the document used to answer the question. If the document does not contain the information needed to answer this question then simply write: "Insufficient information." If an answer to the question is provided, it must be annotated with a citation. Use the following format for to cite relevant passages ({"citation": …}). Cite only the relevant sentence(s) of the document, not the entire document.

**Document 1**: '''The flipped classroom intentionally shifts instruction to a learner-centered model, in which students are often initially introduced to new topics outside of school, freeing up classroom time for the exploration of topics in greater depth, creating meaningful learning opportunities.'''

**Document 2**:'''With a flipped classroom, 'content delivery' may take a variety of forms, often featuring video lessons prepared by the teacher or third parties, although online collaborative discussions, digital research, and text readings may alternatively be used. The ideal length for a video lesson is widely cited as eight to twelve minutes.'''


**Question**: What is a good length for a video?
:::



:::{.callout-warning collapse="true"}
## {{< bi robot >}} Output

<p>A good length for a video in a flipped classroom context is eight to twelve minutes ("SOURCE": The ideal length for a video lesson is widely cited as eight to twelve minutes.).</p>


:::


Try asking a question that cannot be answered with the provided documents:



:::{.callout-note}
## {{< bi person >}} Prompt:
You will be provided with 

- context: documents delimited by **triple quotes**
- a question 

Your task is to provide a simplified answer to the question using only the provided document and to cite the passage(s) of the document used to answer the question. If the document does not contain the information needed to answer this question then simply write: "Insufficient information." If an answer to the question is provided, it must be annotated with a citation. Use the following format for to cite relevant passages ("SOURCE": …). Cite only the relevant sentence(s) of the document, not the entire document.

**Document 1**:'''The flipped classroom intentionally shifts instruction to a learner-centered model, in which students are often initially introduced to new topics outside of school, freeing up classroom time for the exploration of topics in greater depth, creating meaningful learning opportunities.'''

**Document 2**:'''With a flipped classroom, 'content delivery' may take a variety of forms, often featuring video lessons prepared by the teacher or third parties, although online collaborative discussions, digital research, and text readings may alternatively be used. The ideal length for a video lesson is widely cited as eight to twelve minutes.'''


**Question**: Can you recommend a good book on the topic of flipped classrooms?
:::

:::{.callout-warning collapse="true"}
## {{< bi robot >}} Output

<p>Insufficient information.</p>


:::



### Structured output

You can also use prompts to instruct the model to produce structured output. For example, you can ask the model to give you a table.



:::{.callout-note}
## {{< bi person >}} Prompt:
You are a high school teacher. Give me a table containing Greek letters in one column, their pronunciation in the second column, and examples of usage in the third column. Give me a maximum of 6 rows.
:::



:::{.callout-warning collapse="true"}
**{{< bi robot >}} Output:**
:::

<p>Certainly! Here's a simple table for your request:</p>
<p>| Greek Letter | Pronunciation | Examples of Usage   |
|--------------|---------------|---------------------|
| α (Alpha)    | 'al-fuh'      | α particle, α decay |
| β (Beta)     | 'bay-tuh'     | β radiation, β sheet in proteins |
| γ (Gamma)    | 'gam-uh'      | γ rays, Γ distribution in statistics |
| δ (Delta)    | 'del-tuh'     | Δ change, δ function in mathematics |
| ε (Epsilon)  | 'ep-si-lon'   | ε neighborhood in calculus, ε in electromotive force |
| Ω (Omega)    | 'o-may-guh'   | Ω resistance in electronics, ω in angular velocity |</p>


<!-- ::: -->





## Exercises


(@) **Write a prompt** that will make ChatGPT or Copilot act as a writing critic.

You can use this as your starting point, and then iteratively improve it.

:::aside
Your first step could be to translate this into German.
:::

:::{.callout-note}
## Feedback on a text
I want you to act as a [harsh/constructive] critic. Criticize what I give to you and show me where my argumentation is lacking. Start by asking me what text I would like feedback on. Then give me your feedback.
:::


If you need an essay, you can use this one. There should be plenty to criticize.

:::{.callout-note collapse="true"}
## Essay

**Sollten Schulnoten abgeschafft werden?**

In unserer heutigen Bildungswelt gibt es viele verschiedene Methoden, um den Fortschritt und das Wissen eines Schülers zu messen. Eine der gebräuchlichsten Methoden sind Schulnoten. Aber sollten wir wirklich Noten verwenden, um den Wert eines Schülers zu bestimmen? Ich glaube, dass Noten in Schulen abgeschafft werden sollten, und hier sind meine Gründe dafür:

Erstens, Noten sind oft subjektiv. Verschiedene Lehrer haben unterschiedliche Meinungen darüber, was eine "A" -Arbeit im Vergleich zu einer "B" -Arbeit ist. Ein Schüler könnte in einem Fach bei einem Lehrer eine "A" bekommen und bei einem anderen Lehrer eine "B". Dies zeigt, dass Noten nicht immer ein genaues Bild von dem Wissen eines Schülers geben.

Zweitens, Noten erzeugen unnötigen Druck. Viele Schüler fühlen sich durch die Noten, die sie bekommen, gestresst und überfordert. Dieser Druck kann zu Angstzuständen, Depressionen und anderen gesundheitlichen Problemen führen. Wenn es keine Noten gäbe, könnten sich die Schüler mehr auf das Lernen konzentrieren und weniger darauf, eine bestimmte Note zu bekommen.

Drittens, durch die Abschaffung von Noten könnten Schüler mehr Freiheit in ihrer Bildung haben. Sie könnten Themen studieren, die sie wirklich interessieren, anstatt sich darauf zu konzentrieren, welche Themen ihnen die besten Noten bringen würden. Dies könnte zu einer besseren und umfassenderen Bildung führen.

Einige könnten argumentieren, dass Noten notwendig sind, um den Fortschritt eines Schülers zu messen. Aber es gibt viele andere Möglichkeiten, den Fortschritt zu messen, wie zum Beispiel Portfolios, Präsentationen oder Projekte. Diese Methoden könnten ein genaueres Bild von dem Wissen und den Fähigkeiten eines Schülers geben.

Abschliessend glaube ich, dass Schulnoten mehr Schaden als Nutzen bringen. Sie sind oft subjektiv, erzeugen unnötigen Druck und beschränken die Freiheit der Schüler. Es ist an der Zeit, dass wir ein neues System finden, um den Fortschritt und das Wissen unserer Schüler zu messen.
:::


(@) What role should the model assume?
(@) What is the task? Try to have the essay critiqued, and then ask for suggestions for improvement.
(@) Have the model provide an improved version of the essay.
(@) Instruct the model to show you the changes it made to the essay (you can use markdown to format the output).
(@) Instruct the model to list the changes it made to the essay in a table, and to explain why it made each change.
(@) Reflection: Did your prompting strategies work? What worked well? What didn't work well? 



## Further Resources

(@) **Explore these prompt guides**. Use both/either ChatGPT and Copilot to try out new ideas.

:::{.callout-tip collapse="true"}
## Learn prompting: An comprehensive (and free) guide aimed at non-technical users.
{{< bi link >}} [Learn prompting](https://learnprompting.org/docs/intro)



```{=html}
<iframe src="https://learnprompting.org/docs/intro" width="100%" height="500px"></iframe>
``` 


:::


:::{.callout-tip collapse="true"}
## Prompting guide: A more technical guide to prompting
{{< bi link >}} [Prompting guide](https://www.promptingguide.ai/): **DAIR.AI** (Democratizing Artificial Intelligence Research, Education, and Technologies). The guide is licensed under an MIT license.



```{=html}
<iframe src="https://www.promptingguide.ai/" width="100%" height="500px"></iframe>
``` 


:::


:::{.callout-tip collapse="true"}
## SPARK: A chatbot for prompting guides
[{{< bi link >}} SPARK: a retrieval-augmented chatbot](https://huggingface.co/spaces/amagastya/SPARK): Chatbot that uses various prompting guides as its knowledge base.

<!-- ```{=html}
<iframe src="https://huggingface.co/spaces/amagastya/SPARK" width="100%" height="500px"></iframe>
```  -->
:::





<!-- 
:::{.callout-caution}
## Discussion 💬 

- What experiences did you have with prompting?
- Did you find any of the techniques particularly useful?
::: -->
