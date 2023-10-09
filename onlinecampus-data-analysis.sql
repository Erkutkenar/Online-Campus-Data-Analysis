-- use onlinecampus

-- 1 Write a query to display all of the information inside courses table
select * from courses


-- 2 Write a query to display for each course - the course_id, price_usd, num_students, and content_duration_minutes-- 
select course_id, price_usd, num_students,content_duration_minutes from courses;

-- 3  Write a query to display the :

/*a. course_title

b. num_students

c. positive_reviews + negative_reviews (name this calculation: `total_reviews` for example)

d. A new column representing the ratio between the total_reviews & num_students: (positive_reviews + negative_reviews) / num_students*/

select course_title,num_students,positive_reviews + negative_reviews as  `total_reviews` , 
(positive_reviews + negative_reviews) / num_students
from courses;


/* 4  Write a query to display the course_id, course_title, num_lessons, content_duration_minutes, 
and a new column representing the average duration for each lecture (content_duration_minutes / num_lessons) */

select course_id, course_title, num_lessons, content_duration_minutes, 
content_duration_minutes / num_lessons as avg_duration_lecture from courses


/* 5  Write a query to display the

a. course_id

b. course_title

c. num_students

d. price_usd (the column represents price in USD)

e. Total course revenues in USD (num_students * price_usd) */ 

select course_id,course_title,price_usd, num_students * price_usd as course_revenue from  courses


/* 6 Write a query to display the course_id, and course_subject concatenated with course_title */

select CONCAT(course_id,' ',course_subject,' ',course_title) as course_info from courses

/* 7
Write a query to display the course_id, price_usd, content_duration_minutes,

and a new column representing the content duration in hours (content_duration_minutes / 60)*/

select course_id, price_usd, content_duration_minutes, (content_duration_minutes / 60) content_hours from courses

/* 8

Write a query to display the distinct values in course_subject column */
select distinct course_subject from courses



/*9
Write a query to display the unique values in course_level column*/
select distinct course_level from courses


/* 10 Write a query to display the distinct combination of values in course_subject and course_level columns*/

select distinct course_subject, course_level from courses
