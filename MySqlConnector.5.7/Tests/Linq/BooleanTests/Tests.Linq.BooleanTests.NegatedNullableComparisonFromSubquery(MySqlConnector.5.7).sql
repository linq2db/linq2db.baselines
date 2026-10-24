-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
SELECT
	`x`.`ParentID`
FROM
	`Parent` `x`
WHERE
	`x`.`Value1` <> 1 OR `x`.`Value1` IS NULL

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
SELECT
	`x`.`ParentID`
FROM
	`Parent` `x`
WHERE
	NOT (`x`.`Value1` = 1 AND `x`.`Value1` IS NOT NULL)

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
SELECT
	`x`.`ParentID`
FROM
	`Parent` `x`
WHERE
	NOT (`x`.`Value1` = 1 AND `x`.`Value1` IS NOT NULL)

