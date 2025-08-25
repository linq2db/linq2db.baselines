BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80 (asynchronously)

SELECT
	`a_ChildPredicate`.`ParentID`,
	`a_ChildPredicate`.`ChildID`
FROM
	`Parent` `p`
		LEFT JOIN `Child` `a_ChildPredicate` ON `p`.`ParentID` = `a_ChildPredicate`.`ParentID` AND `a_ChildPredicate`.`ChildID` > 1

