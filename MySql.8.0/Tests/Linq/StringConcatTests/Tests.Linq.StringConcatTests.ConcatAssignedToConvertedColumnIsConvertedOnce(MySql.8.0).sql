-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @p VarChar(2) -- String
SET     @p = 'x:'
DECLARE @suffix VarChar(2) -- String
SET     @suffix = '-s'

UPDATE
	`ConvertedTargetRow` `t1`
SET
	`t1`.`Conv` = CONCAT(Coalesce(@p, ''), `t1`.`Sku`, Coalesce(@suffix, ''))

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	`t1`.`Id`,
	`t1`.`Conv`
FROM
	`ConvertedTargetRow` `t1`
LIMIT 2

