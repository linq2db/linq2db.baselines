-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @p VarChar(2) -- String
SET     @p = 'x:'
DECLARE @suffix VarChar(2) -- String
SET     @suffix = '-s'

UPDATE
	`ConvertedTargetRow` `t1`
SET
	`t1`.`Conv` = CONCAT(Coalesce(@p, ''), `t1`.`Sku`, Coalesce(@suffix, ''))

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
SELECT
	`t1`.`Id`,
	`t1`.`Conv`
FROM
	`ConvertedTargetRow` `t1`
LIMIT 2

