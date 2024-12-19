BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

UPDATE
	`Parent` `w`
		INNER JOIN `Child` `b` ON `w`.`ParentID` = `b`.`ParentID`
SET
	`w`.`Value1` = `b`.`ChildID`
WHERE
	`b`.`ChildID` = (
		SELECT
			MAX(`b2`.`ParentID`)
		FROM
			`Child` `b2`
	) AND
	`b`.`ChildID` = -1

