﻿BeforeExecute
--  MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`c_1`.`ParentID`,
	`c_1`.`ParentID`,
	`c_1`.`ParentID`
FROM
	`Parent` `c_1`
UNION ALL
SELECT
	`c_2`.`ParentID`,
	`c_2`.`ParentID` + 1,
	`c_2`.`ChildID`
FROM
	`Child` `c_2`

