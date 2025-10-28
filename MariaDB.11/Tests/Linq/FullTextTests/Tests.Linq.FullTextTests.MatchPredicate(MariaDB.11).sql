BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`r`.`id`,
	`r`.`TestField1`,
	`r`.`TestField2`
FROM
	`FullTextIndexTest` `r`
WHERE
	MATCH(`r`.`TestField1`, `r`.`TestField2`) AGAINST ('found')
ORDER BY
	`r`.`id`

