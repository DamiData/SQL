#The table below shows data gathered in order to create an index which ranks the quality of 
#each state's education system. 
 #Find 3 additional data sources and use the combined data to create an overall score / ranking. 
# Please highlight your methodology & sources.

-- data source  and methodology:
-- the data used in this analysis  was gathered from the provided table,
-- which include information about easch state 's education systtem.
-- application of normalization process  and assigned weight to different factors
-- to calculate an overall score,providing insights into the education quality.

# step 1 :DATA NORMILISATION
SELECT
state,
(Avg_ACT_score -MIN(Avg_ACT_score) OVER ()) / (MAX(Avg_ACT_score) OVER ()- MIN(Avg_ACT_Score) OVER ())  AS Norm_ACT_Score,
(Avg_SAT_scores -MIN(Avg_SAT_scores) OVER ()) /(MAX(Avg_SAT_scores) OVER () - MIN(Avg_SAT_Scores) OVER ()) AS Norm_SAT_Scores,
(Num_Libraries -MIN(Num_Libraries) OVER ()) / (MAX(Num_Libraries) OVER () - MIN(Num_Libraries) OVER ()) AS Norm_Libraries,
(Suspension_percentage - MIN(Suspension_percentage)OVER ()) / (MAX(Suspension_percentage) OVER ()-MIN(Suspension_percentage) OVER ()) AS Norm_Suspension,
(Adult_Education_population - MIN(Adult_Education_Population)OVER ()) / (MAX(Adult_Education_Population) OVER () -MIN(Adult_Education_Population)OVER ()) AS Norm_AdultEducation
FROM educationdata;

# step 2 : Assigning Weights

SELECT
State,
Norm_ACT_Score * 0.3 AS Weighted_ACT_score,
Norm_SAT_Scores * 0.2 AS Weighted_SAT_Scores,
Norm_Libraries * 0.1 AS Weighted_Libraries,
Norm_Suspension * 0.2 AS Weighted_Suspension,
Norm_AdultEducation * 0.2 AS WEighted_AdultEducation
FROM
( -- 
  SELECT 
  state,
(Avg_ACT_score -MIN(Avg_ACT_score) OVER ()) / (MAX(Avg_ACT_score) OVER ()- MIN(Avg_ACT_Score) OVER ())  AS Norm_ACT_Score,
(Avg_SAT_scores -MIN(Avg_SAT_scores) OVER ()) /(MAX(Avg_SAT_scores) OVER () - MIN(Avg_SAT_Scores) OVER ()) AS Norm_SAT_Scores,
(Num_Libraries -MIN(Num_Libraries) OVER ()) / (MAX(Num_Libraries) OVER () - MIN(Num_Libraries) OVER ()) AS Norm_Libraries,
(Suspension_percentage - MIN(Suspension_percentage)OVER ()) / (MAX(Suspension_percentage) OVER ()-MIN(Suspension_percentage) OVER ()) AS Norm_Suspension,
(Adult_Education_population - MIN(Adult_Education_Population)OVER ()) / (MAX(Adult_Education_Population) OVER () -MIN(Adult_Education_Population)OVER ()) AS Norm_AdultEducation
FROM educationdata
) AS NormalizedData;

#  step 3 : Calculate  Overall Score
  SELECT
  State,
  (Norm_ACT_Score * 0.3 +  Norm_SAT_Scores * 0.2 +  Norm_Libraries * 0.1 + Norm_Suspension * 0.2 + Norm_AdultEducation * 0.2) AS Overall_Score
  FROM
   (--
   SELECT
   state,
(Avg_ACT_score -MIN(Avg_ACT_score) OVER ()) / (MAX(Avg_ACT_score) OVER ()- MIN(Avg_ACT_Score) OVER ())  AS Norm_ACT_Score,
(Avg_SAT_scores -MIN(Avg_SAT_scores) OVER ()) /(MAX(Avg_SAT_scores) OVER () - MIN(Avg_SAT_Scores) OVER ()) AS Norm_SAT_Scores,
(Num_Libraries -MIN(Num_Libraries) OVER ()) / (MAX(Num_Libraries) OVER () - MIN(Num_Libraries) OVER ()) AS Norm_Libraries,
(Suspension_percentage - MIN(Suspension_percentage)OVER ()) / (MAX(Suspension_percentage) OVER ()-MIN(Suspension_percentage) OVER ()) AS Norm_Suspension,
(Adult_Education_population - MIN(Adult_Education_Population)OVER ()) / (MAX(Adult_Education_Population) OVER () -MIN(Adult_Education_Population)OVER ()) AS Norm_AdultEducation
FROM educationdata
) AS NormalizedData;

#  step 4 : Ranking
 SELECT
 State,
Overall_Score,
RANK() OVER (ORDER BY Overall_Score DESC) AS Ranking
FROM Overall_Score

   