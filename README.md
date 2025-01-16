# CICD-for-Machine-Learning
[![CI](https://github.com/kingabzpro/CICD-for-Machine-Learning/actions/workflows/ci.yml/badge.svg)](https://github.com/JonasLuehrs/CICD-for-Machine-Learning/actions/workflows/ci.yml)
[![CI](https://github.com/kingabzpro/CICD-for-Machine-Learning/actions/workflows/cd.yml/badge.svg)](https://github.com/JonasLuehrs/CICD-for-Machine-Learning/actions/workflows/cd.yml)

A beginner's project on "Automating Training, Evaluation, and Deploying Models using GitHub Actions" provided by [Abid Ali Awan](https://github.com/kingabzpro) and [datacamp](https://www.datacamp.com/).

Tutorial: https://www.datacamp.com/tutorial/ci-cd-for-machine-learning

Original repository: https://github.com/kingabzpro/CICD-for-Machine-Learning

## Project Description
This project trains a random forest algorithm with [scikit-learn](https://scikit-learn.org/1.5/index.html) pipelines to build a drug classifier. The evaluation is done automatically using [CML](https://cml.dev/) (Continuous Machine Learning). A web application is build with [gradio](https://www.gradio.app/) and deployed on the [Hugging Face Hub](https://huggingface.co/spaces). 

From training to evaluation, the entire process is automated using [GitHub actions](https://github.com/features/actions). Pushing code to the GitHub repository will trigger the training, evaluation and deployment, leading to an updated web application, model, and results on Hugging Face (see https://huggingface.co/spaces/jonas-luehrs/Drug-Classification).

## Dataset
[Drug Classification](https://www.kaggle.com/datasets/prathamtripathi/drug-classification)


## Web Application

![gradio_drug_app](./Images/gradio_drug_app.JPG)