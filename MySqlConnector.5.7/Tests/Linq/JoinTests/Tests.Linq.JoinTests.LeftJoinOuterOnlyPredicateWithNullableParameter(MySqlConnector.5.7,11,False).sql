-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @id Int32
SET     @id = 11

SELECT
	`c_1`.`ChildID`,
	`p`.`ParentID`
FROM
	`Child` `c_1`
		LEFT JOIN `Parent` `p` ON `p`.`Value1` = `c_1`.`ParentID` AND `c_1`.`ChildID` > @id

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
SELECT
	`t1`.`ParentID`,
	`t1`.`ChildID`
FROM
	`Child` `t1`

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
SELECT
	`t1`.`ParentID`,
	`t1`.`Value1`
FROM
	`Parent` `t1`

