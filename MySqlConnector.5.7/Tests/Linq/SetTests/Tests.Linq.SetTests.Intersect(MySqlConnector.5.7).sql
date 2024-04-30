BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT DISTINCT
	`t1`.`ParentID`,
	`t1`.`ChildID`
FROM
	`Child` `t1`
WHERE
	EXISTS(
		SELECT
			*
		FROM
			`Child` `p`
		WHERE
			`p`.`ParentID` = 3 AND `t1`.`ParentID` = `p`.`ParentID` AND
			`t1`.`ChildID` = `p`.`ChildID`
	)

