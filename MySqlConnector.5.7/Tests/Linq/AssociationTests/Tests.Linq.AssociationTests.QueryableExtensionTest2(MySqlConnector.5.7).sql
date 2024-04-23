BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`a_QueryableParent`.`ParentID`,
	`a_QueryableParent`.`Value1`
FROM
	`Child` `_`
		INNER JOIN `Parent` `a_QueryableParent` ON `_`.`ParentID` = `a_QueryableParent`.`ParentID`

