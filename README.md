# image-classification-pipeline
An end-to-end MATLAB image classification pipeline including dataset preparation, model training, and evaluation.

## Overview
This project implements an **end-to-end image classification pipeline** in MATLAB.  
It covers dataset preparation, training, and evaluation for a supervised learning task using image data.

The pipeline is structured to clearly separate data organization, model training, and performance evaluation.

## Technologies Used
- **Language:** MATLAB
- **Domain:** Machine Learning / Computer Vision
- **Concepts:** Supervised learning, dataset preprocessing, model evaluation

## Project Structure
- `data/`
  - `Meta.csv` – Dataset metadata
  - `Train.csv` – Training split
  - `Test.csv` – Test split
- `src/`
  - `TrainingImageOrg.m` – Organizes training images by class
  - `TestImageOrg.m` – Organizes test images by class
  - `TrainingLoad.m` – Loads training data
  - `TrainModel.m` – Trains the classification model
  - `ModelEval.m` – Evaluates model performance

## How It Works
1. Dataset metadata is read from CSV files
2. Images are organized into structured directories by class
3. Training data is loaded and preprocessed
4. A classification model is trained
5. The trained model is evaluated on test data

## How to Run
Run the scripts in the following order:
```matlab
TrainingImageOrg
TestImageOrg
TrainingLoad
TrainModel
ModelEval
```

Ensure the dataset paths in the scripts are configured correctly.

## Academic Context
This project was developed to practice:
- Machine learning workflows
- Image-based classification
- Dataset engineering
- Model training and evaluation in MATLAB

## Author
Franck Dipanda
