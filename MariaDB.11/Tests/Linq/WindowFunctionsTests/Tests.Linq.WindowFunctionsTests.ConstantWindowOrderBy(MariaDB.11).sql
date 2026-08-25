-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t`.`Id`,
	ROW_NUMBER() OVER (),
	ROW_NUMBER() OVER (ORDER BY `t`.`Id`),
	ROW_NUMBER() OVER (ORDER BY `t`.`Id`)
FROM
	`WindowFunctionTestEntity` `t`

