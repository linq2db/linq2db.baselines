BeforeExecute
-- MariaDB MySql.Official MySql

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

