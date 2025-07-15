BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT /*+ DERIVED_CONDITION_PUSHDOWN(p) DERIVED_CONDITION_PUSHDOWN(c_1) */
	`p`.`ParentID`,
	`p`.`Value1`
FROM
	`Parent` `p`
		INNER JOIN `Child` `c_1` ON `p`.`ParentID` = `c_1`.`ParentID`

