-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @take Int32
SET     @take = 10

SELECT
	`c_2`.`Id`,
	`o`.`Id`
FROM
	(
		SELECT
			`c_1`.`Id`
		FROM
			`Customer` `c_1`
		WHERE
			`c_1`.`Id` > 0
		LIMIT @take
	) `c_2`
		LEFT JOIN `Order` `o` ON `c_2`.`Id` = `o`.`CustomerId`

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

