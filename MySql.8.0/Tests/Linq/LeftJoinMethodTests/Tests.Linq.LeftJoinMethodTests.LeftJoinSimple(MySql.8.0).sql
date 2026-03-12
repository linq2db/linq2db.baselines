-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`c_1`.`Name`,
	`o`.`Name`
FROM
	`Customer` `c_1`
		LEFT JOIN `Order` `o` ON `c_1`.`Id` = `o`.`CustomerId`

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

