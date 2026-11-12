-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`t`.`Name`,
	`o`.`Name`
FROM
	`Customer` `t`
		LEFT JOIN `Order` `o` ON `t`.`Id` = `o`.`CustomerId`

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

