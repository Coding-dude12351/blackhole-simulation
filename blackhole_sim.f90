program blackhole_sim
     implicit none
     real :: G=6.67e-11, M_bh=1e30, c=3e8, r=1e10, v=1e6, dt=1
     real :: rs
     rs = 2 * G * M_bh / c**2 ! Schwarzschild radius
     do while(r > rs)
         r = r - v * dt
         if (r < rs) then
             print *, "Particle fell in! 😐"
             exit
         end if 
         print *, "r =", r 
     end do 
end program blackhole_sim        