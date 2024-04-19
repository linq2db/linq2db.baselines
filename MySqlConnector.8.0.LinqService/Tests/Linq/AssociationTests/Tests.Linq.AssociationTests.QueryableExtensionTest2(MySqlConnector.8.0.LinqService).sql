BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`a_QueryableParent`.`ParentID`,
	`a_QueryableParent`.`Value1`
FROM
	`Child` `_`
		INNER JOIN `Parent` `a_QueryableParent` ON `_`.`ParentID` = `a_QueryableParent`.`ParentID`

