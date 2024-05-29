BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @skip Int32
SET     @skip = 3

SELECT
	`t1`.`ParentID`,
	`t1`.`ChildID`
FROM
	`Child` `t1`
ORDER BY
	`t1`.`ChildID` DESC,
	`t1`.`ParentID` + 1
LIMIT @skip, 9223372036854775807

