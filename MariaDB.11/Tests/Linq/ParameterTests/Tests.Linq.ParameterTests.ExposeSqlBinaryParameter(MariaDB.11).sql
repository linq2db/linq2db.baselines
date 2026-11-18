-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @p Blob(3) -- Binary
SET     @p = 0x000102

SELECT
	`t`.`decimalDataType`,
	`t`.`binaryDataType`,
	`t`.`varbinaryDataType`,
	`t`.`varcharDataType`
FROM
	`AllTypes` `t`
WHERE
	`t`.`binaryDataType` = @p

