-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
SELECT DISTINCT
	`p`.`ParentID`
FROM
	`Parent` `p`
WHERE
	EXISTS(
		SELECT
			*
		FROM
			`Parent` `t1`
				LEFT JOIN `Child` `c_1` ON `c_1`.`ParentID` = `t1`.`ParentID`
		WHERE
			`p`.`ParentID` = `t1`.`ParentID` AND `c_1`.`ParentID` IS NULL AND
			`c_1`.`ChildID` IS NULL
	)

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
SELECT
	`t1`.`ParentID`,
	`t1`.`Value1`
FROM
	`Parent` `t1`

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
SELECT
	`t1`.`ParentID`,
	`t1`.`ChildID`
FROM
	`Child` `t1`

