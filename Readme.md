# Getting and cleaning data final project
This project its about tidy data, We have to combine multiples files and then clean the variables names and make some calcs.

## About the data
The features selected for this database come from the one accelerometer and 
gyroscope 3-axial this values was captured to 50hz

## Variable names
The names of the variables is structured in a hierarquical shape, in six levels so:

1. time or freq: this indicate that the value it is in times values in seconds or frequency in hz
2. Body or Grav: some values are split into Body that mean, that it is the meassure of the subject or gravity
		that means that the value it is obtained for the gravity force.
3. acc or gyr: it is the source of the messuare, acc it is accelerometer or gyr for gyroscope
4. jrk or mag:  jrk by jerk, it is a ratio of angular accelation and mag it the norma eculidian magnitud obtained by each axis 
5. mean or stdr: It idicated that this variable is a statistic value
6. x, y or z: show the axis that it is consider.

## Example:
the variable time_body_acc_mean_x correpond to time value for the body subject and was taked by acceloremter instrumment and it is a mean of axis x

## How work it
Clone or download this repository and run the file named run_analysis.R in R, then you getting a file dt.txt that cotain the tidy data.