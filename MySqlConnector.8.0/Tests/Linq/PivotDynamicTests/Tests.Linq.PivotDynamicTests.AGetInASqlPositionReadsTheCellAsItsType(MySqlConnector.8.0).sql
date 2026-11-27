-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
SELECT DISTINCT
	CAST(Floor(`x`.`Amount`) AS SIGNED)
FROM
	`CategorySales` `x`
WHERE
	`x`.`Year` = 2010

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
SELECT DISTINCT
	CAST(Floor(`x`.`Amount`) AS SIGNED)
FROM
	`CategorySales` `x`
WHERE
	`x`.`Year` = 2010 AND `x`.`Category` = 'A'
LIMIT 2

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @castOfA Int32
SET     @castOfA = 20

SELECT
	`r`.`Category`
FROM
	`CategorySales` `r`
GROUP BY
	`r`.`Category`
HAVING
	CAST(Floor(SUM(CASE
		WHEN `r`.`Year` = 2010 THEN `r`.`Amount`
		ELSE NULL
	END)) AS SIGNED) = @castOfA

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
SELECT DISTINCT
	CAST(Floor(SUM(CASE
		WHEN `g_1`.`Year` = 2010 THEN `g_1`.`Amount`
		ELSE NULL
	END)) AS SIGNED)
FROM
	`CategorySales` `g_1`
GROUP BY
	`g_1`.`Category`

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
SELECT
	SUM(CASE
		WHEN `r`.`Year` = 2000 THEN `r`.`Amount`
		ELSE NULL
	END),
	SUM(CASE
		WHEN `r`.`Year` = 2010 THEN `r`.`Amount`
		ELSE NULL
	END)
FROM
	`CategorySales` `r`
GROUP BY
	`r`.`Category`

