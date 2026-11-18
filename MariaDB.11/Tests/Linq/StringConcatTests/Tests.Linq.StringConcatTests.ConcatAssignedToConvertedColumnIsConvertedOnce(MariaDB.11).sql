-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @p VarChar(2) -- String
SET     @p = 'x:'
DECLARE @suffix VarChar(2) -- String
SET     @suffix = '-s'

UPDATE
	`ConvertedTargetRow` `t1`
SET
	`t1`.`Conv` = CONCAT(Coalesce(@p, ''), `t1`.`Sku`, Coalesce(@suffix, ''))

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`Id`,
	`t1`.`Conv`
FROM
	`ConvertedTargetRow` `t1`
LIMIT 2

