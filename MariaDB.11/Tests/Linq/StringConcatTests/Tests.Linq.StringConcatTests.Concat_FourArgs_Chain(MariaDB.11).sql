-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`e`.`Id`
FROM
	`ConcatTestEntity` `e`
WHERE
	Concat(Coalesce(`e`.`Str1`, ''), ' ', Coalesce(`e`.`StrReq`, ''), '!') = 'John Programmer!'

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`t1`.`Id`,
	`t1`.`Str1`,
	`t1`.`Str2`,
	`t1`.`StrReq`,
	`t1`.`Num`
FROM
	`ConcatTestEntity` `t1`

