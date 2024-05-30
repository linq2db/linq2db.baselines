BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	MATCH(`r`.`TestField1`, `r`.`TestField2`) AGAINST ('found' WITH QUERY EXPANSION)
FROM
	`FullTextIndexTest` `r`
ORDER BY
	MATCH(`r`.`TestField1`, `r`.`TestField2`) AGAINST ('found' WITH QUERY EXPANSION) DESC

