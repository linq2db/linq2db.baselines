-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	`t`.`Name`
FROM
	`Customer` `t`
		LEFT JOIN `Order` `o` ON `t`.`Id` = `o`.`CustomerId`
WHERE
	`o`.`Id` IS NULL

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	`t1`.`Id`,
	`t1`.`Name`
FROM
	`Customer` `t1`

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	`t1`.`Id`,
	`t1`.`CustomerId`,
	`t1`.`Name`
FROM
	`Order` `t1`

