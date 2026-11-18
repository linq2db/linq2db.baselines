-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
SELECT
	`e`.`Id`,
	`e`.`Item`,
	`e`.`Flag`
FROM
	`NestedInListEntity` `e`
WHERE
	(`e`.`Flag`) = (`e`.`Id` = `e`.`Item` AND `e`.`Item` IS NOT NULL OR `e`.`Id` = 5)

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
SELECT
	`t1`.`Id`,
	`t1`.`Item`,
	`t1`.`Flag`
FROM
	`NestedInListEntity` `t1`

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
SELECT
	`e`.`Id`,
	`e`.`Item`,
	`e`.`Flag`
FROM
	`NestedInListEntity` `e`
WHERE
	(`e`.`Flag`) <> (`e`.`Id` = `e`.`Item` AND `e`.`Item` IS NOT NULL OR `e`.`Id` = 5)

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
SELECT
	`t1`.`Id`,
	`t1`.`Item`,
	`t1`.`Flag`
FROM
	`NestedInListEntity` `t1`

