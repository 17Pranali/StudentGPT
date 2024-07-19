# import streamlit as st
# from langchain_helper import get_few_shot_db_chain, general_query

# st.title("StudentGPT")

# # User selects an option
# option = st.radio("Select an option:", ["Student Query", "General Question"])

# question = st.text_input("Question: ")

# if question:
#     if option == "Student Query":
#         chain = get_few_shot_db_chain()
#         response = chain.run(question)
#     else:
#         response = general_query(question)

#     st.header("Answer")
#     st.write(response)

import streamlit as st
from langchain_helper import get_few_shot_db_chain, general_query

st.title("StudentGPT")

# User selects an option
option = st.radio("Select an option:", ["Student Query", "General Question"])

question = st.text_input("Question: ")

# Add a button for the user to click after entering their question
if st.button('Enter'):
    if question:
        if option == "Student Query":
            chain = get_few_shot_db_chain()
            response = chain.run(question)
        else:
            response = general_query(question)

        st.header("Answer")
        st.write(response)
