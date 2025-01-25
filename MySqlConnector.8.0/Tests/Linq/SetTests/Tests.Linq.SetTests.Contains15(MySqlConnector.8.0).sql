BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`p`.`ParentID`,
	`p`.`ChildID`
FROM
	`Child` `p`
		INNER JOIN `Parent` `a_Parent1` ON `p`.`ParentID` = `a_Parent1`.`ParentID`
WHERE
	`a_Parent1`.`ParentID` IN (1, 2)

