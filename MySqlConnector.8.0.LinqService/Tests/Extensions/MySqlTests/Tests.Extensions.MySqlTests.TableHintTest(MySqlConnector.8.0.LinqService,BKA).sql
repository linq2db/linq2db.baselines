BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80 (asynchronously)

SELECT /*+ BKA(p) */
	`p`.`ParentID`,
	`p`.`Value1`
FROM
	`Parent` `p`

