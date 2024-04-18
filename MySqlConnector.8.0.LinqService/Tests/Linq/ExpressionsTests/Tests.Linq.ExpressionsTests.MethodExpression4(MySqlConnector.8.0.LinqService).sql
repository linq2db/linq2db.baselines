﻿BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @n Int32
SET     @n = 3

SELECT
	(
		SELECT
			Count(*)
		FROM
			`Child` `c_1`
		WHERE
			`p`.`ParentID` = `c_1`.`ParentID` AND `c_1`.`ChildID` > @n
	)
FROM
	`Parent` `p`

