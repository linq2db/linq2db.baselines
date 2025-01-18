BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT DISTINCT
	`r`.`F1`,
	`r`.`F2`
FROM
	`DistinctOrderByTable` `r`
ORDER BY
	`r`.`F1` DESC,
	`r`.`F2`

