﻿BeforeExecute
--  MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	COUNT(*)
FROM
	`Child` `c_1`
GROUP BY
	`c_1`.`ParentID`
HAVING
	COUNT(*) > 1 AND COUNT(*) > 1

