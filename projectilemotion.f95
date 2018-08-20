program projectilemotion
 implicit none
 
! define constants

 real, parameter :: g = 9.8
 real, parameter :: pi = 3.1415927 

 real :: a, t, u, x, y
 real :: theta, v, vx, vy

 write(*,*) "Provide initial angle in degrees, time, and initial velocity, separated by carriage returns"
 read(*,*) a, t, u

 a = a * pi/180.0

 x = u * cos(a) * t
 y = u * sin(a) * t - 0.5 * g * t**2

 vx = u * cos(a)
 vy = u * sin(a) - g * t
 v = sqrt(vx**2 + vy**2)
 theta = atan(vy/vx) * 180 / pi

 write(*,*) "x: ", x, " y: ", y
 write(*,*) "v: ", v, "theta: ", theta

end program projectilemotion
