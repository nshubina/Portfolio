-- Show all flights that departed from Kyiv to any other city--
Select Plane, Town_from, Town_to, Time_out, Time_in
From Trip
Where Town_from ='Kyiv' AND Town_to <> 'Kyiv'