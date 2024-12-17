BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @p Blob(3) -- Binary
SET     @p = 0x000102

SELECT
	`t`.`DecimalDataType`,
	`t`.`BinaryDataType`,
	`t`.`VarBinaryDataType`,
	`t`.`VarcharDataType`
FROM
	`AllTypes` `t`
WHERE
	`t`.`BinaryDataType` = @p

