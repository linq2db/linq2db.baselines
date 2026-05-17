-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT /*+ INDEX_MERGE(p parent_ix, parent2_ix) */
	`p`.`ParentID`,
	`p`.`Value1`
FROM
	`Parent` `p`

