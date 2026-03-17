-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`a_ChildInner`.`ParentID`
FROM
	`NotNullParent` `p`
		INNER JOIN `NotNullChild` `a_ChildInner` ON `p`.`ID` = `a_ChildInner`.`ParentID`

