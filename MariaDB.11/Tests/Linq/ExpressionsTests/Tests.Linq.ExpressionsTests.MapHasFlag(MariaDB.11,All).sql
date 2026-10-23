-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @flag Int32
SET     @flag = 7

SELECT
	`t`.`Id`,
	`t`.`Value`,
	`t`.`Flags`
FROM
	`MappingTestClass` `t`
WHERE
	(`t`.`Flags` & @flag) = @flag

