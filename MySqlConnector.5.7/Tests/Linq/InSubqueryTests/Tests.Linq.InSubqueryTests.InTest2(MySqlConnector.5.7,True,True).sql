BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`c_1`.`ParentID`,
	`c_1`.`ChildID`,
	`c_1`.`GrandChildID`
FROM
	`GrandChild` `c_1`
WHERE
	EXISTS(
		SELECT
			*
		FROM
			`Parent` `p`
		WHERE
			(`p`.`Value1` = `c_1`.`ParentID` OR `p`.`Value1` IS NULL AND `c_1`.`ParentID` IS NULL)
	)

