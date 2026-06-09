-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`t`.`FinishedOn`,
	`t`.`StartedOn`
FROM
	`NullableDtOffsetSub` `t`
ORDER BY
	`t`.`Id`

