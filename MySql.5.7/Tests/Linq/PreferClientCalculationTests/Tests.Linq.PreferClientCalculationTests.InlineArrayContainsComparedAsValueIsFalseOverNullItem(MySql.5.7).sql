-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`e`.`Id`,
	`e`.`Item`,
	`e`.`Flag`
FROM
	`NestedInListEntity` `e`
WHERE
	(`e`.`Flag`) = (`e`.`Id` = `e`.`Item` AND `e`.`Item` IS NOT NULL OR `e`.`Id` = 5)

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`t1`.`Id`,
	`t1`.`Item`,
	`t1`.`Flag`
FROM
	`NestedInListEntity` `t1`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`e`.`Id`,
	`e`.`Item`,
	`e`.`Flag`
FROM
	`NestedInListEntity` `e`
WHERE
	(`e`.`Flag`) <> (`e`.`Id` = `e`.`Item` AND `e`.`Item` IS NOT NULL OR `e`.`Id` = 5)

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`t1`.`Id`,
	`t1`.`Item`,
	`t1`.`Flag`
FROM
	`NestedInListEntity` `t1`

