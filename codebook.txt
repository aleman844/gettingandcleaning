# Code book

## General decription
The names of the variables is structured in a hierarquical shape, in six levels so:


1. Time or freq: this indicate that the value it is in times values in seconds or frequency in hz
2. Body or Grav: some values are split into Body that mean, that it is the meassure of the subject or gravity
		that means that the value it is obtained for the gravity force.
3. Acc or gyr: it is the source of the messuare, acc it is accelerometer or gyr for gyroscope
4. Jrk or mag:  jrk by jerk, it is a ratio of angular accelation and mag it the norma eculidian magnitud obtained by each axis 
5. Mean or stdr: It idicated that this variable is a statistic value
6. X, y or z: show the axis that it is consider.

## Example:
The variable time_body_acc_mean_x correpond to time value for the body subject and was taked by acceloremter instrumment and it is a mean of axis x

## List of variables:
### Time variales
Taked with a rate sample of 50hz and it are divided in body and gravity, also depend of the device was take the sample gyroscope or acclerometer
"time_body_acc_mean_x"
"time_body_acc_mean_y"
"time_body_acc_mean_z"
"time_body_acc_stdr_x"
"time_body_acc_stdr_y"
"time_body_acc_stdr_z"
"time_grav_acc_mean_x"
"time_grav_acc_mean_y"
"time_grav_acc_mean_z"
"time_grav_acc_stdr_x"
"time_grav_acc_stdr_y"
"time_grav_acc_stdr_z"
"time_body_acc_jrk_mean_x"
"time_body_acc_jrk_mean_y"
"time_body_acc_jrk_mean_z"
"time_body_acc_jrk_stdr_x"
"time_body_acc_jrk_stdr_y"
"time_body_acc_jrk_stdr_z"
"time_body_gyr_mean_x"
"time_body_gyr_mean_y"
"time_body_gyr_mean_z"
"time_body_gyr_stdr_x"
"time_body_gyr_stdr_y"
"time_body_gyr_stdr_z"
"time_body_gyr_jrk_mean_x"
"time_body_gyr_jrk_mean_y"
"time_body_gyr_jrk_mean_z"
"time_body_gyr_jrk_stdr_x"
"time_body_gyr_jrk_stdr_y"
"time_body_gyr_jrk_stdr_z"
"time_body_acc_mag_mean"
"time_body_acc_mag_stdr"
"time_grav_acc_mag_mean"
"time_grav_acc_mag_stdr"
"time_body_acc_jrk_mag_mean"
"time_body_acc_jrk_mag_stdr"
"time_body_gyr_mag_mean"
"time_body_gyr_mag_stdr"
"time_body_gyr_jrk_mag_mean"
"time_body_gyr_jrk_mag_stdr"

### Frequency variales
This variables are obtained to fast fourier transform to time variables 
"freq_body_acc_mean_x"
"freq_body_acc_mean_y"
"freq_body_acc_mean_z"
"freq_body_acc_stdr_x"
"freq_body_acc_stdr_y"
"freq_body_acc_stdr_z"
"freq_body_acc_meanfreqx"
"freq_body_acc_meanfreqy"
"freq_body_acc_meanfreqz"
"freq_body_acc_jrk_mean_x"
"freq_body_acc_jrk_mean_y"
"freq_body_acc_jrk_mean_z"
"freq_body_acc_jrk_stdr_x"
"freq_body_acc_jrk_stdr_y"
"freq_body_acc_jrk_stdr_z"
"freq_body_acc_jrk_meanfreqx"
"freq_body_acc_jrk_meanfreqy"
"freq_body_acc_jrk_meanfreqz"
"freq_body_gyr_mean_x"
"freq_body_gyr_mean_y"
"freq_body_gyr_mean_z"
"freq_body_gyr_stdr_x"
"freq_body_gyr_stdr_y"
"freq_body_gyr_stdr_z"
"freq_body_gyr_meanfreqx"
"freq_body_gyr_meanfreqy"
"freq_body_gyr_meanfreqz"
"freq_body_acc_mag_mean"
"freq_body_acc_mag_stdr"
"freq_body_acc_mag_meanfreq"
"freq_body_acc_jrk_mag_mean"
"freq_body_acc_jrk_mag_stdr"
"freq_body_acc_jrk_mag_meanfreq"
"freq_body_gyr_mag_mean"
"freq_body_gyr_mag_stdr"
"freq_body_gyr_mag_meanfreq"
"freq_body_gyr_jrk_mag_mean"
"freq_body_gyr_jrk_mag_stdr"
"freq_body_gyr_jrk_mag_meanfreq"

### Angular variables
Finaly the angular variables was obtained averaging the signals in a signal window sample.
"angl_tbody_acc_mean_gravity"
"angl_tbody_acc_jrk_mean_gravitymean)"
"angl_tbody_gyr_mean_gravitymean"
"angl_tbody_gyr_jrk_mean_gravitymean"
"angl_x_gravitymean"
"angl_y_gravitymean"
"angl_z_gravitymean"


