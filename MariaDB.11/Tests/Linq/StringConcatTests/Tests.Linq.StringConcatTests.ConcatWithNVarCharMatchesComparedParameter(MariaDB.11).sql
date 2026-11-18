-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @key VarChar(13) -- String
SET     @key = 'A-100A-100Жук'

SELECT
	`p`.`Id`
FROM
	`ConcatProduct` `p`
WHERE
	(CONCAT(`p`.`Sku`, `p`.`Title`)) = @key

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`Id`,
	`t1`.`Sku`,
	`t1`.`Title`
FROM
	`ConcatProduct` `t1`

