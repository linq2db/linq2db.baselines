-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT /*+ NO_MERGE(p) NO_MERGE(c_1) */
	`p`.`ParentID`,
	`p`.`Value1`
FROM
	`Parent` `p`
		INNER JOIN `Child` `c_1` ON `p`.`ParentID` = `c_1`.`ParentID`

