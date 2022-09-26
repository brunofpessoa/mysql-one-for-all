SELECT
	CAST(MIN(Price) AS DECIMAL(5, 2)) AS faturamento_minimo,
	CAST(MAX(Price) AS DECIMAL(5, 2)) AS faturamento_maximo,
  CAST(ROUND(AVG(Price), 2) AS DECIMAL(5, 2)) AS faturamento_medio,
  CAST(ROUND(SUM(Price), 2) AS DECIMAL(5, 2)) AS faturamento_total
FROM SpotifyClone.UsersPlans AS up
INNER JOIN SpotifyClone.Plans AS p ON p.PlanID = up.PlanID;
