-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	SUM(`i`.`DecimalValue`)
FROM
	`Inner` `i`
WHERE
	`i`.`Group` = 1

