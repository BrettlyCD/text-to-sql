Text-to-SQL Copilot
==============================

Text-to-SQL Copilot is a tool to support users who see SQL databases as a barrier to actionable insights. Taking your natural language question as input, it uses a generative text model to write a SQL statement based on your data model. Then runs it on your database and analyses the results. And it does this all at no cost using HuggingFace Inference API.

![copilot_demo](https://github.com/BrettlyCD/text-to-sql/assets/42612621/f2f59382-f283-425d-b0c4-738f7b2aee4a)


## Setup
### Dataset
This was built specifically off of the Spider dataset. Follw these steps to recreate:
1. Download the data from this [Google Drive](https://drive.google.com/uc?export=download&id=1TqleXec_OykOYFREKKtschzY29dUcVAQ)
2. Unzip the file
3. Save the root 'spider' folder under the [src/data/raw/](https://github.com/BrettlyCD/text-to-sql/tree/main/src/data/raw) directory

### Setup Process
This application pulls the schema information from the SQLite database files and utilizes a locally stored Chroma Vector database to identify which schema to use to answer questions. Run the following commands to compile the database info and build the vector database:

```
pip3 install -r requirements.txt
```
```
python3 setup.py
```

This will take about 10-15 minutes to fully run.

## HuggingFace API Token
Currently, this project relies on the google [flan-t5-xxl](https://huggingface.co/google/flan-t5-xxl) languauge model. It is accessed for free through the HuggingFace Inference API. In order to use this method, you need to create an [API token](https://huggingface.co/settings/tokens) and save in in a .env file in the root of the repo:

```
touch .env
```

Open the .env file and enter your HuggingFace API token:
\
\
<img width="499" alt="env_example" src="https://github.com/BrettlyCD/text-to-sql/assets/42612621/aa3c6e5f-428b-45be-b626-e5a373a680f5">

## Using SQL Copilot
Navigate to the [src/app](https://github.com/BrettlyCD/text-to-sql/tree/docs/src) directory and start the program with the following command:
```
python3 main.py
```

Then input your question - happy SQL-ing!


## Citation 

Chase, H. (2022). LangChain [Computer software]. https://github.com/hwchase17/langchain

Yu, T., Zhang, R., Yang, K., Yasunaga, M., Wang, D., Li, Z., ... & Radev, D. (2018). Spider: A large-scale human-labeled dataset for complex and cross-domain semantic parsing and text-to-sql task. arXiv preprint arXiv:1809.08887.
