-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT /*+ RESOURCE_GROUP(aaa) */
	`p`.`ParentID`,
	`p`.`Value1`
FROM
	`Child` `c_1`
		INNER JOIN `Parent` `p` ON `c_1`.`ParentID` = `p`.`ParentID`

