BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`r`.`id`,
	`r`.`TestField1`,
	`r`.`TestField2`
FROM
	`FullTextIndexTest` `r`
WHERE
	MATCH(`r`.`TestField1`, `r`.`TestField2`) AGAINST ('found' WITH QUERY EXPANSION)
ORDER BY
	`r`.`id`

