﻿BeforeExecute
--  MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	MATCH(`r`.`TestField1`, `r`.`TestField2`) AGAINST ('found' WITH QUERY EXPANSION)
FROM
	`FullTextIndexTest` `r`
ORDER BY
	MATCH(`r`.`TestField1`, `r`.`TestField2`) AGAINST ('found' WITH QUERY EXPANSION) DESC

