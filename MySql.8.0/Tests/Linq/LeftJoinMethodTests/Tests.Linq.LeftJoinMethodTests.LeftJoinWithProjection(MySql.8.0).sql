-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`x`.`Name`,
	`o`.`Id`
FROM
	`Customer` `x`
		LEFT JOIN `Order` `o` ON `x`.`Id` = `o`.`CustomerId`

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

