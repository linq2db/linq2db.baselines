BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT /*+ NO_BKA(c_1, p) */
	`p`.`ParentID`,
	`p`.`Value1`
FROM
	`Child` `c_1`
		INNER JOIN `Parent` `p` ON `c_1`.`ParentID` = `p`.`ParentID`

