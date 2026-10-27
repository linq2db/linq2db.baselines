-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @suffix VarChar(3) -- String
SET     @suffix = 'Жук'

SELECT
	`p`.`Id`,
	CONCAT(`p`.`Sku`, Coalesce(@suffix, '')),
	CONCAT(Coalesce(@suffix, ''), `p`.`Sku`, Coalesce(@suffix, '')),
	CONCAT(`p`.`Sku`, Coalesce(@suffix, ''))
FROM
	`ConcatProduct` `p`

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	`t1`.`Id`,
	`t1`.`Sku`,
	`t1`.`Title`
FROM
	`ConcatProduct` `t1`

