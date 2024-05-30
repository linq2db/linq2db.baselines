BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT /*+ NO_BKA(p) NO_DERIVED_CONDITION_PUSHDOWN(p, c_1) */
	`p`.`ParentID`,
	`p`.`Value1`
FROM
	`Parent` `p`
		CROSS JOIN `Child` `c_1`

