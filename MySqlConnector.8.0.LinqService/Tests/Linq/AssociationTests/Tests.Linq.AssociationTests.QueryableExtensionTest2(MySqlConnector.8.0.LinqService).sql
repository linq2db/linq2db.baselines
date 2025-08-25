BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80 (asynchronously)

SELECT
	`a_QueryableParent`.`ParentID`,
	`a_QueryableParent`.`Value1`
FROM
	`Child` `t1`
		INNER JOIN `Parent` `a_QueryableParent` ON `t1`.`ParentID` = `a_QueryableParent`.`ParentID`

