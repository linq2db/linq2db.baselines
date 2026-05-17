-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT /*+ JOIN_FIXED_ORDER(p) JOIN_FIXED_ORDER(c_1) */
	`p`.`ParentID`,
	`p`.`Value1`
FROM
	`Parent` `p`
		INNER JOIN `Child` `c_1` ON `p`.`ParentID` = `c_1`.`ParentID`

