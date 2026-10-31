-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @suffix VarChar(3) -- String
SET     @suffix = 'Жук'

SELECT
	`p`.`Id`
FROM
	`ConcatProduct` `p`
WHERE
	(CONCAT(`p`.`Sku`, Coalesce(@suffix, ''))) = `p`.`Title`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`t1`.`Id`,
	`t1`.`Sku`,
	`t1`.`Title`
FROM
	`ConcatProduct` `t1`

