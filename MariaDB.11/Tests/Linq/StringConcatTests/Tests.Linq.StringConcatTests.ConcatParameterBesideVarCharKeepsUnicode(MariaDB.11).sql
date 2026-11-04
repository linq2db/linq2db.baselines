-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @suffix VarChar(3) -- String
SET     @suffix = 'Жук'

SELECT
	`p`.`Id`,
	CONCAT(`p`.`Sku`, Coalesce(@suffix, '')),
	CONCAT(Coalesce(@suffix, ''), `p`.`Sku`, Coalesce(@suffix, '')),
	CONCAT(`p`.`Sku`, Coalesce(@suffix, ''))
FROM
	`ConcatProduct` `p`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`Id`,
	`t1`.`Sku`,
	`t1`.`Title`
FROM
	`ConcatProduct` `t1`

