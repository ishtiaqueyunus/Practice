study_hours = c(89,69,45,75,63)
subject_marks = c(79, 53, 71, 57, 63)
grade = c(3.75, 2.5, 3.5, 2.75, 3.00)
student_data = c(study_hours, subject_marks, grade)
student_matrix = matrix(student_data)
student_matrix
student_matrix = matrix(student_data, byrow = FALSE, nrow = 5)
student_matrix
colnames(student_matrix) = c('Study_Hours', 'Subject_Marks', 'grade')
rownames(student_matrix) = c(1:5)
student_matrix
