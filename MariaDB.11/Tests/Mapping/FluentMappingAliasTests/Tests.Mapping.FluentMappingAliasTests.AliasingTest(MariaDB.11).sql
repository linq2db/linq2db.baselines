-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t`.`Id`,
	`t`.`Value`,
	`t`.`ValueStr`
FROM
	`InstanceClass` `t`
WHERE
	`t`.`Id` > 1 AND
	`t`.`Value` >= 104 AND
	`t`.`Value` <= 115 AND
	`t`.`ValueStr` LIKE 'S%' ESCAPE '~'

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t`.`Id`,
	`t`.`Value`,
	`t`.`ValueStr`
FROM
	`InstanceClass` `t`
WHERE
	`t`.`Id` > 1 AND
	`t`.`Value` >= 104 AND
	`t`.`Value` <= 115 AND
	`t`.`ValueStr` LIKE 'S%' ESCAPE '~'

