-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	Concat(`e`.`Str1`, '/', `e`.`StrReq`)
FROM
	`SqlConcatTestEntity` `e`
ORDER BY
	`e`.`Id`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`t1`.`Id`,
	`t1`.`Str1`,
	`t1`.`Str2`,
	`t1`.`StrReq`,
	`t1`.`Num`
FROM
	`SqlConcatTestEntity` `t1`

