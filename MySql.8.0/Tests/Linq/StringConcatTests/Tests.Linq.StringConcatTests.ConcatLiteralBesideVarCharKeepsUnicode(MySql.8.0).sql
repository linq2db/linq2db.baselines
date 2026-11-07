-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	`p`.`Id`,
	CONCAT('Артикул ', `p`.`Sku`)
FROM
	`ConcatProduct` `p`

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	`t1`.`Id`,
	`t1`.`Sku`,
	`t1`.`Title`
FROM
	`ConcatProduct` `t1`

