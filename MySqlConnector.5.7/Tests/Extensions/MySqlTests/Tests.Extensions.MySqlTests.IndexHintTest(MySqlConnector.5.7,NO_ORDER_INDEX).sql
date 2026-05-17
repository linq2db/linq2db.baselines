-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT /*+ NO_ORDER_INDEX(p parent_ix, parent2_ix) */
	`p`.`ParentID`,
	`p`.`Value1`
FROM
	`Parent` `p`

