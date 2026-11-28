-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT DISTINCT
	CAST(Floor(`x`.`Amount`) AS SIGNED)
FROM
	`CategorySales` `x`
WHERE
	`x`.`Year` = 2010

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT DISTINCT
	CAST(Floor(`x`.`Amount`) AS SIGNED)
FROM
	`CategorySales` `x`
WHERE
	`x`.`Year` = 2010 AND `x`.`Category` = 'A'
LIMIT 2

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @castOfA Int32
SET     @castOfA = 20

SELECT
	`x`.`Category`
FROM
	`CategorySales` `x`
WHERE
	`x`.`Year` = 2010 AND CAST(Floor(`x`.`Amount`) AS SIGNED) = @castOfA

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
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

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT DISTINCT
	CAST(Floor(SUM(CASE
		WHEN `g_1`.`Year` = 2010 THEN `g_1`.`Amount`
		ELSE NULL
	END)) AS SIGNED)
FROM
	`CategorySales` `g_1`
GROUP BY
	`g_1`.`Category`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
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

