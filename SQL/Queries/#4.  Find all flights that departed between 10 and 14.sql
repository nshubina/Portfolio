 -- Find all flights that departed between 10:00 and 14:00 --
 SELECT *
 FROM Trip
 Where Convert(TIME,time_out) BETWEEN '10:00:00' AND '14:00:00'