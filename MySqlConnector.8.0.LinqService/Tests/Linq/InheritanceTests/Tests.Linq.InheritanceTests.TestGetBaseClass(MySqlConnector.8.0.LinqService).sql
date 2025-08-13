BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`x`.`Value1`,
	`x`.`ParentID`
FROM
	`Parent` `x`
WHERE
	`x`.`Value1` = 2 OR `x`.`Value1` = 1

