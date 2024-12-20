BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`p1`.`ParentID`,
	`p1`.`Value1`
FROM
	`Parent` `p1`,
	`Parent` `p2`
WHERE
	`p1`.`Value1` = `p2`.`Value1` OR `p1`.`Value1` IS NULL AND `p2`.`Value1` IS NULL

