-- count of each make over the years
select Model_year,Make,COUNT(Make)[Total No of make ] from [Ev energy]
group by Make,Model_year
order by Model_year

-- Total No of make by each make
select Make,COUNT(Make)[Total No of make ],AVG(B_model * 100) [Business model] from [Ev energy]
group by Make 
order by [Business model] desc

-- Which vehicle classes deliver best when Efficiency(40%),Recharge(35%),Motor(25%)  
select Vehicle_class,AVG(B_model * 100) [Business model] ,COUNT(Vehicle_class)[Total number Vehicle class]
from [Ev energy]
group by Vehicle_class
order by [Business model] desc

-- Which Model deliver best in when Efficiency(40%),Recharge(35%),Motor(25%) 
select Model,AVG(B_model * 100) [Business model] ,COUNT(model)[Total Number of model]
from [Ev energy]
group by Model
order by [Business model] desc

-- Which Make,model,Vehicle_class deliver best when Efficiency(40%),Recharge(35%),Motor(25%) 
select Model_year, Make,model,Vehicle_class,AVG(B_model * 100) [Business model]
from [Ev energy]
group by Make,model,Vehicle_class,Model_year
order by [Business model] desc

-- Which Make has the most vehicles listed
select Make,COUNT(Make)[Total No of make]
from [Ev energy]
group by Make
order by COUNT(Make) desc


-- Which make and model deliver best in Efficiency,Recharge,Motor
select make,model,Vehicle_class,
AVG(Energy_Efficiency_km_kWh)[Average Efficiency],AVG(Recharge_time_h)[Average Recharge],AVG(Motor_kW)[Average Motor]
from [Ev energy]
group by model,make,Vehicle_class
order by [Average Efficiency] desc
