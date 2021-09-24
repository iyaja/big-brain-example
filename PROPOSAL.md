# Big Brain: Model Parallelism on Distributed Shared Infrastructure

> **Members:** Xiaojuan Ma, Ajay Arasanipalai, Chirag Shetty

## Research Problem

As deep learning models continue to grow in size, scaling model training and inference across a distributed cluster of compute nodes is becoming an increasingly important and challenging problem. Many recent developments in neural architecures involve training models with many billions (or even trillions) of parameters. However, training very large models that do not fit on remains a challenge for most machine learning engineers today, due to the complexity involved in setting up model-parallel training efficiently.

In this project, we intend to develop tooling to make training and deploying ML models on distributed infrastructure as easy as deploying a traditional client-server-database systems.

- **Modular API:** Current solutions for distributed training like PyTorch `DistributedDataParallel`, the `Ray` library, and GPipe require the programmer to have existing knowledge about distributed training algorithms. Enabling smart distribution using these underlying systems is an evolving effort. We intend to survey the process of deploying distributed training over existing systems [Ray, Horovod, TFextended, Flexflow, Deepspeed] in a way that exposes the infrastructure as one large, reliable GPU

- **More Parallelism:** 3D parallelism (data, model, pipeline) are crucial to achieve scale and efficiency in distributed shared infrastructure training. We specifically want to study interaction of model parallelism with job parallelism. Works like [clockwork] looked at DL job parallelism while [Gpipe] looked at enabling 3D for single DL jobs. [Looks like a done job!]

- **Fault tolerance:** As distributed training at scale becomes possible, fault tolerance of such systems is crucial.  For model parallelism, if some node fails, the whole training has to stop since the operators depend on each other: each hidden layer relays on the previous layer in forward computation and relays on the next layer during the back propagation.  Therefore, it is important to build a fault tolerant system for model parallelism. [HPC]

## Research Methods

There are a number of existing solutions that . Our first line of work would be to analyze , including but not limited to:

- [MLSys Reading List](https://jeongseob.github.io/readings_mlsys.html)
- [Breakdown of Existing Systems](https://github.com/EthicalML/awesome-production-machine-learning#model-training-orchestration)  

Equally important is to understand developer experience with the existing systems . We plan to go through forums, like hackernews, pytorch/tensorflow and gather use cases (eg: comment on this post is a developer pointing out difficulties with distributed training: https://news.ycombinator.com/item?id=22993351).
At the end of this exercise we should have a potential user persona  and a compelling need of theirs that our project solves. It can be an individual developer in a small organization with limited resources or it may be infrastructure provider - Amazon, Microsoft or even startups like this one: https://news.ycombinator.com/item?id=17491604
[Potential solution?] - name some potential algos



## Plan and Schedule

* [2 weeks] Survey
* [2 weeks] Algorithm design and simulation
* [4 weeks] Actual implementation
* [2 weeks] Evaluation

## Resources

Our work involves training and testing neural networks

Citation:
1. [pipetransofrmer]
2. [deepspeed]
3. [hetpipe]
4. [sagemaker]

Subtopic from Xiaojuan: feel free to change or discard it
Sub-problem: Large scale machine learning model deployment in dynamic setting
     For model parallelism, if some node fails, the whole training has to stop since the operators depend on each other: each hidden layer relays on the previous layer in forward computation and relays on the next layer during the back propagation.  Therefore, it is important to build a fault tolerant system for model parallelism.

Research Method:  Theory + implementation
Our work will start from Baechi and extend the scope into dynamic settings in both theory and implementation.

Plan and Schedule:
Understand Baechi.
2.   Understand the implementation of checkpoints of mainly used frameworks, like PyTorch, and TensorFlow.
3.   Compare machine learning model and traditional DAG problem
4.   Try to find a possible way to deal with failure for machine learning models.
5.   Implement.


