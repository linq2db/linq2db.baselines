-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	SUM(CASE
		WHEN `r`.`Year` = 2010 THEN `r`.`Amount`
		ELSE NULL
	END)
FROM
	`Sales` `r`
GROUP BY
	`r`.`Category`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	SUM(CASE
		WHEN `r`.`Year` = 2010 THEN `r`.`Amount`
		ELSE NULL
	END)
FROM
	`Sales` `r`
GROUP BY
	`r`.`Category`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	CAST(Floor(SUM(CASE
		WHEN `r`.`Year` = 2010 THEN `r`.`Amount`
		ELSE NULL
	END)) AS SIGNED)
FROM
	`Sales` `r`
GROUP BY
	`r`.`Category`

