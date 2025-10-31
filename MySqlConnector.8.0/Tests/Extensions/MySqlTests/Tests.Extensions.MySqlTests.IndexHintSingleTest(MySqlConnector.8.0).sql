-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT /*+ INDEX(p parent_ix) */
	`p`.`ParentID`,
	`p`.`Value1`
FROM
	`Parent` `p`

