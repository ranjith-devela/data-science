#Data visualization
#1. Visualizing the ratio of gender and course completion status
counts <- table(students_raw$gender, students_raw$test.preparation.course)
mosaicplot(counts, main="Gender vs Course completion")

#2. Visualizing parents education
parental_level <- table(students_raw$parental.level.of.education)
pie(parental_level)

#3. Visualizing min, max & average along with 25th & 75th percentile
score_labels = c('Maths', 'Reading', 'Writing')
boxplot(students_raw$math.score, students_raw$reading.score, students_raw$writing.score, names = score_labels)

#4. Visualizing test preparation course status
preparation <- table(students_raw$test.preparation.course)
barplot(preparation)

#5. Visualizing Score distribution of students in all courses
plot(students_raw$reading.score, students_raw$writing.score, xlab="Reading", ylab="Writing")