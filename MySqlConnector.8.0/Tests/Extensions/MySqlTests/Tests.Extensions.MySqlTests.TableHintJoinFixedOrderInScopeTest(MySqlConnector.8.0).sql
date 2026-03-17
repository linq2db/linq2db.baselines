-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT /*+ JOIN_FIXED_ORDER(p) JOIN_FIXED_ORDER(c_1) */
	`p`.`ParentID`,
	`p`.`Value1`
FROM
	`Parent` `p`
		INNER JOIN `Child` `c_1` ON `p`.`ParentID` = `c_1`.`ParentID`

