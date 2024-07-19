# from langchain.llms import GooglePalm
# from langchain.utilities import SQLDatabase
# from langchain_experimental.sql import SQLDatabaseChain

# import os
# from dotenv import load_dotenv
# load_dotenv()  


# def get_few_shot_db_chain():
#     db_user = "root"
#     db_password = "pass123"
#     db_host = "localhost"
#     db_name = "college"

#     db = SQLDatabase.from_uri(f"mysql+pymysql://{db_user}:{db_password}@{db_host}/{db_name}")
#     llm = GooglePalm(google_api_key=os.environ["GOOGLE_API_KEY"], temperature=0.1)

#     chain = SQLDatabaseChain.from_llm(llm, db, verbose=True)
#     return chain

# if __name__ == "__main__":
#     chain = get_few_shot_db_chain()
#     print(chain.run("Give the fee of John Doe"))


from langchain.llms import GooglePalm
from langchain_experimental.sql import SQLDatabaseChain
from langchain.utilities import SQLDatabase

import os
from dotenv import load_dotenv
load_dotenv()

def get_few_shot_db_chain():
    db_user = "Pranali"
    db_password = "Panu@173"
    db_host = "localhost"
    db_name = "college"

    db = SQLDatabase.from_uri(f"mysql+pymysql://{db_user}:{db_password}@{db_host}/{db_name}")
    llm = GooglePalm(google_api_key=os.environ["GOOGLE_API_KEY"], temperature=0.1)

    chain = SQLDatabaseChain.from_llm(llm, db, verbose=True)
    return chain

def general_query(question):
    llm = GooglePalm(google_api_key=os.environ["GOOGLE_API_KEY"], temperature=0.1)

    # Run the generation task
    result = llm.generate(prompts=[question])

    # Check if 'generations' list is not empty
    if result.generations:
        # Extract the generated text from the result
        generated_text = result.generations[0][0].text
    else:
        generated_text = "No text was generated."

    return generated_text


