BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`p`.`ParentID`,
	(
		SELECT
			Count(*)
		FROM
			`Child` `c_1`
		WHERE
			`p`.`ParentID` = `c_1`.`ParentID` AND `c_1`.`ParentID` = `p`.`ParentID` AND
			Cast(`c_1`.`ChildID` as DECIMAL) <> 0
	)
FROM
	`Parent` `p`
WHERE
	`p`.`ParentID` <> 5

