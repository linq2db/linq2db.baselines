-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @take Int32
SET     @take = 3

SELECT
	`t1`.`Id`,
	`t1`.`Grp`,
	`t1`.`Value`
FROM
	`NullsTable` `t1`
ORDER BY
	`t1`.`Id`
LIMIT @take

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`t1`.`Id`,
	`t1`.`Grp`,
	`t1`.`Value`
FROM
	`NullsTable` `t1`

