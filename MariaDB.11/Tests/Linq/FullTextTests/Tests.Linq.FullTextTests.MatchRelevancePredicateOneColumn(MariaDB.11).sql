﻿BeforeExecute
--  MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	MATCH(`r`.`TestField2`) AGAINST ('found')
FROM
	`FullTextIndexTest` `r`
ORDER BY
	MATCH(`r`.`TestField2`) AGAINST ('found') DESC

