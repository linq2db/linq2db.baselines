-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT /*+ HASH_JOIN(p) */
	`p`.`ParentID`,
	`p`.`Value1`
FROM
	`Parent` `p`

