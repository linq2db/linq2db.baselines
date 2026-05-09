-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`e`.`Id`
FROM
	`ConcatTestEntity` `e`
WHERE
	CONCAT_WS('', Coalesce(`e`.`StrReq`, ''), ' ', 'I') = 'Programmer I'

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`t1`.`Id`,
	`t1`.`Str1`,
	`t1`.`Str2`,
	`t1`.`StrReq`,
	`t1`.`Num`
FROM
	`ConcatTestEntity` `t1`

