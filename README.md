Text-to-SQL Copilot
==============================

Returning data from a relational database by generating SQL statements from natural language inputs.

## Setup
### Dataset
This was built specifically off of the Spider dataset. Follw these steps to recreate:
1. Please download the data from this [Google Drive](https://drive.google.com/uc?export=download&id=1TqleXec_OykOYFREKKtschzY29dUcVAQ)
2. Unzip the file
3. Save the root 'spider' folder under the [src/data/raw/ directory](https://github.com/BrettlyCD/text-to-sql/tree/main/src/data/raw)

### Setup Process
This application pulls the schema information from the SQLite database files and utilizes a locally stored Chroma Vector database to identify which schema to use to answer questions. Run the following commands to compile the database info and build the vector database:

```
pip3 install -r requirements.txt
```
Then navigate to the src/data/setup directory and run the setup with this command: 
```
python3 setup.py
```

This will take about 10-15 minutes to fully run.


## Using SQL Copilot
Navigate to the src/app directory and start the program with the following commands:
```
python3 main.py
```

Then input your question - happy data analyzing!


## Citation 

Chase, H. (2022). LangChain [Computer software]. https://github.com/hwchase17/langchain

Yu, T., Zhang, R., Yang, K., Yasunaga, M., Wang, D., Li, Z., ... & Radev, D. (2018). Spider: A large-scale human-labeled dataset for complex and cross-domain semantic parsing and text-to-sql task. arXiv preprint arXiv:1809.08887.
