-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`r`.`Category`
FROM
	`Sales` `r`
GROUP BY
	`r`.`Category`
HAVING
	SUM(CASE
		WHEN `r`.`Year` = 2010 THEN `r`.`Amount`
		ELSE NULL
	END) > 16

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`r`.`Category`
FROM
	`Sales` `r`
GROUP BY
	`r`.`Category`
HAVING
	SUM(CASE
		WHEN `r`.`Year` = 2010 THEN `r`.`Amount`
		ELSE NULL
	END) > 16

