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
  
 
- **Give the LLM a role:** Make the model assume a role. For example, instruct the model to `act like a tutor` or `you are an expert programmer.`
  
  
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

<p>Certainly! Here's a concise explanation of the "flipped classroom" model, tailored for a group of teachers:</p>
<hr />
<h1><strong>Flipped Classroom: An Overview</strong></h1>
<p>The <strong>flipped classroom</strong> is an innovative educational model that rethinks the traditional learning environment by reversing the roles of classwork and homework. This approach shifts direct instruction from the group learning space (the classroom) to the individual learning space (typically through digital means), allowing the classroom to transform into a dynamic, interactive learning environment where teachers guide students in applying concepts and engaging creatively in the subject matter.</p>
<h2><strong>Key Components</strong></h2>
<ol>
<li><strong>Pre-Class Preparation</strong></li>
<li><strong>Videos/Lectures</strong>: Students watch recorded lectures or engage with other instructional materials at home.</li>
<li>
<p><strong>Readings/Activities</strong>: Additional resources may be assigned to complement the video material.</p>
</li>
<li>
<p><strong>In-Class Time</strong></p>
</li>
<li><strong>Active Learning</strong>: Class time is dedicated to exercises, projects, or discussions that deepen understanding.</li>
<li>
<p><strong>Personalized Support</strong>: Teachers provide one-on-one assistance, clarifying doubts and addressing individual needs.</p>
</li>
<li>
<p><strong>Feedback &amp; Assessment</strong></p>
</li>
<li><strong>Continuous Feedback</strong>: Regular quizzes and interactive activities provide immediate feedback to students and teachers.</li>
<li><strong>Formative Assessment</strong>: Emphasizes understanding and improvement, guiding future teaching and learning strategies.</li>
</ol>
<h2><strong>Benefits</strong></h2>
<ul>
<li><strong>Enhanced Engagement</strong>: Encourages active participation and collaboration among students.</li>
<li><strong>Personalized Learning</strong>: Allows students to learn at their own pace, reviewing materials as needed.</li>
<li><strong>Critical Thinking</strong>: Fosters a deeper understanding by applying concepts during class activities.</li>
<li><strong>Teacher-Student Interaction</strong>: Increases meaningful interactions, focusing on guiding rather than lecturing.</li>
</ul>
<h2><strong>Challenges</strong></h2>
<ul>
<li><strong>Access to Technology</strong>: Requires that all students have access to necessary technology at home.</li>
<li><strong>Student Motivation</strong>: Success depends on students' willingness to prepare outside of class.</li>
<li><strong>Preparation Time</strong>: Developing materials and planning active learning sessions can be time-intensive for teachers.</li>
</ul>
<h2><strong>Conclusion</strong></h2>
<p>The flipped classroom model represents a shift towards a more student-centered approach to learning. By reimagining the use of class time, it offers opportunities for deeper engagement and personalized support, preparing students more effectively for complex problem-solving and collaborative work. However, its success depends on careful planning, access to resources, and the motivation of both teachers and students.</p>
<hr />
<p>I hope this provides a clear and helpful overview of the flipped classroom concept for your teaching strategies!</p>


:::

Now let's try a different persona:



:::{.callout-note}
## {{< bi person >}} Prompt:
You are 13 year old high school student. Explain the concept of "flipped classroom" to your friends. Use markdown to format your response. Keep you explanation concise and to the point.
:::

:::{.callout-warning collapse="true"}
## {{< bi robot >}} Output

<p>Hey friends! 🚀 So, I learned about this cool way of learning called a <strong>flipped classroom</strong>. Let me break it down for you:</p>
<h3>What is a Flipped Classroom? 🤔</h3>
<p>A <strong>flipped classroom</strong> is like turning our normal classes upside down. Instead of the teacher talking and us listening during class, we do the opposite.</p>
<h3>How Does It Work? 🛠️</h3>
<ul>
<li><strong>At Home:</strong> We watch videos or go through materials on our own. This is usually the "lecture" part but done at home.</li>
<li><strong>In Class:</strong> Instead of listening to the teacher, we do activities, projects, or discuss what we learned. It's all about applying what we know and asking questions.</li>
</ul>
<h3>Why It's Cool 😎</h3>
<ul>
<li><strong>More Control:</strong> We can pause or rewatch the videos at home if we don't get something the first time.</li>
<li><strong>Better Help:</strong> In class, the teacher helps us directly with what we're stuck on.</li>
<li><strong>Fun Learning:</strong> Doing activities and projects in class is way more fun than just sitting and listening.</li>
</ul>
<p>So, it's like we get the best of both worlds – learning at our own pace and then using class time for the fun and tough stuff! 🌟</p>


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

<p>A good length for a video in a flipped classroom is eight to twelve minutes. ("SOURCE": The ideal length for a video lesson is widely cited as eight to twelve minutes.)</p>


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

<p>Certainly! Here's a table with Greek letters, their pronunciations, and examples of their usage:</p>
<p>| Greek Letter | Pronunciation | Example of Usage                 |
|--------------|---------------|----------------------------------|
| α (Alpha)    | AL-fuh        | α particle, α decay in physics   |
| β (Beta)     | BAY-tuh       | β sheet in biochemistry, β radiation |
| γ (Gamma)    | GAM-uh        | γ rays in physics, Γ function in mathematics |
| δ (Delta)    | DEL-tuh       | δ function in mathematics, Δ change in variables |
| ε (Epsilon)  | EP-si-lon     | ε in calculus for limits, ε-nets in computational geometry |
| θ (Theta)    | THAY-tuh      | θ angle in trigonometry, θ in spherical coordinates | </p>
<p>This table provides an introduction to some of the Greek letters, how they're pronounced, and where they might commonly be found in scientific and mathematical contexts.</p>


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






<!-- 
:::{.callout-caution}
## Discussion 💬 

- What experiences did you have with prompting?
- Did you find any of the techniques particularly useful?
::: -->

