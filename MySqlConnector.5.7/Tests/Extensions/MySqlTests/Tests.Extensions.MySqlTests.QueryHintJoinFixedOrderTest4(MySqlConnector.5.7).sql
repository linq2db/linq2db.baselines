-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT /*+ JOIN_FIXED_ORDER(c_1, p) */
	`p`.`ParentID`,
	`p`.`Value1`
FROM
	`Child` `c_1`
		INNER JOIN `Parent` `p` ON `c_1`.`ParentID` = `p`.`ParentID`

