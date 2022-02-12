# Pewlett-Hackard-Analysis
Module 7 Challenge is utilizing `SQL`,`PostgreSQL`, and `pgAdmin 4` to determine the number of retiring employees per title and identify employees who are eligible to participate in a mentorship program

## Overview of the employee database analysis
The manager Bobby is preparing for the upcoming of "silver tsunami" of retiring employees and figure out a list of employees who are eligible for the mentorship program. We will explore the employee database, create necessary tables, and write a report to help Bobby understand how many employees will be retiring so that he can understand what roles that he need to fill through the mentorship program and possibly through hiring people. It is important for those positions to be filled as soon as employees retiring because company's operations remain in progress and we need to promote and hire qualified people to fill their shoes. The purpose of this analysis is to understand how many positions will need hiring and find the right people to train and participate in the mentorship program to carry on company's operations.

## Results
For **Deliverable 1**, we need to create three tables: retirement_title, unique_titles, and retiring_titles. All tables will be shown below with the analysis. 

***retirement_title table***
<img width="1440" alt="D1 Retirement titles" src="https://user-images.githubusercontent.com/95068439/153721354-7e7f2b75-74f6-4465-a727-23e3ad5523bb.png">
* As we can see from the retirement_title table, there are lots of employees from variations of titles will retire soon. The tables have 133,776 rows which will soon become a massive job vacancies. We can also see that there are some names repeating because some employees are switching positions or being promoted in their respective positions therefore we need to improve and create more table with cleaner data. The next table to create and analyze will be unique_titles. 

***unique_titles table***
<img width="1440" alt="D1 unique titles" src="https://user-images.githubusercontent.com/95068439/153721673-809f0d8a-7dc4-40fa-a655-674bec0b9c27.png">
* For this table, we used the data from previous table and clean the data using `DISTINCT ON` to get a better understanding of how many people are actually retiring as there are no repeat names anymore in the table. As we can see, the rows are cut down to almost half of the previous table with 72,458 rows. We also exclude those employees that have already left the company. Now that we have a clean table we need to count how many retiring employee are in each position and create another table for that specific data. 

***retiring_titles table***
<img width="1440" alt="D1 retiring titles" src="https://user-images.githubusercontent.com/95068439/153722070-2be2cbc6-71ee-4cc4-be78-4280f2b0ea28.png">
* This table gives us the exact number of upcoming job vacancies due to employees retiring. The table only contain 7 rows which represent number of positions. From this table, we can see: 
>*  25,916 Senior Engineers will retire
>*  24,926 Senior Staff will retire
>*  9,285 Engineers will retire
>*  7,636 Staff will retire
>*  3,603 Technique Leaders will retire
>*  1,090 Assistant Engineer will retire
>*  2 Managers will retire

    The total of these numbers equal to the number of rows from the **unique_titles table** which is 72,458. 

For **Deliverable 2**, we are creating a mentorship-eligibility table that holds the current employees who were born between January 1, 1965 and December 31, 1965. 

***mentorship_eligibility table***
<img width="1440" alt="D2 mentorship" src="https://user-images.githubusercontent.com/95068439/153722659-61669c33-561a-4322-8221-41bb2de63f1b.png">
* From this table, we can see how many current employees who are eligible for the mentorship program. There are 1549 rows which mean that there are 1549 employees who can participate in the program. 

## Summary
