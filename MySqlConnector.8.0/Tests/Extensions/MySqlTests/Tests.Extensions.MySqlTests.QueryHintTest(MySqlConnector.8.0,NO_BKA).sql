-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT /*+ NO_BKA(p) NO_BKA(p, c_1) */
	`p`.`ParentID`,
	`p`.`Value1`
FROM
	`Parent` `p`
		CROSS JOIN `Child` `c_1`

