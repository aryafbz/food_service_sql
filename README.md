1. users

This table stores basic information about users, including both professors and students.

user_id (Primary Key): A unique identifier for each user.

user_name: The first name of the user.

user_last_name: The last name of the user.

user_national_number: The user's national ID number.


2. professors

Stores data specific to professors.

id (Primary Key): Unique ID for each professor.

personal_id (Foreign Key to users.user_id): Links the professor to their corresponding user record.

department: The department the professor belongs to.

edu_level: The professor’s education level (e.g., PhD, Master's).


3. students
   
Stores data specific to students.

id (Primary Key): Unique ID for each student.

student_number: The student’s university number.

student_major: The field of study or major.

person_id (Foreign Key to users.user_id): Links the student to their corresponding user record.


4. food

Contains information about available food items and their serving schedules.

food_id (Primary Key): Unique ID for each food item.

food_name: Name of the food item.

food_price: Price of the item (DECIMAL(4,2)).

day_date: The calendar date the food is served.

week_day: The day of the week (e.g., Monday, Tuesday).


5. order_food
   
Tracks orders placed by users.

id (Primary Key): Unique ID for each order.

person_id (Foreign Key to users.user_id): The user who placed the order.

food_id (Foreign Key to food.food_id): The food item that was ordered.



![MySQL Workbench 5_20_2025 3_25_22 PM](https://github.com/user-attachments/assets/608ced91-166b-474c-91e2-0f6d4de9efcb)

