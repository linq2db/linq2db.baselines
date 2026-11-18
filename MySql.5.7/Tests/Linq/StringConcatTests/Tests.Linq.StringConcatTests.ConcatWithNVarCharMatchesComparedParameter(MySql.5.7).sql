-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @key VarChar(13) -- String
SET     @key = 'A-100A-100Жук'

SELECT
	`p`.`Id`
FROM
	`ConcatProduct` `p`
WHERE
	(CONCAT(`p`.`Sku`, `p`.`Title`)) = @key

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`t1`.`Id`,
	`t1`.`Sku`,
	`t1`.`Title`
FROM
	`ConcatProduct` `t1`

