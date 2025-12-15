-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT /*+ MERGE(p) */
	`p`.`ParentID`,
	`p`.`Value1`
FROM
	`Parent` `p`

