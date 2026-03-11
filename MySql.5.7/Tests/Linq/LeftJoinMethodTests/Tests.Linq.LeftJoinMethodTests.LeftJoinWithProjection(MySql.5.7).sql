-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`x`.`Name`,
	`o`.`Id`
FROM
	`Customer` `x`
		LEFT JOIN `Order` `o` ON `x`.`Id` = `o`.`CustomerId`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`t1`.`Id`,
	`t1`.`Name`
FROM
	`Customer` `t1`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`t1`.`Id`,
	`t1`.`CustomerId`,
	`t1`.`Name`
FROM
	`Order` `t1`

