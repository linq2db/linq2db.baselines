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
	CASE
		WHEN `t1`.`Value` IS NULL THEN 1
		ELSE 0
	END,
	`t1`.`Value` DESC,
	`t1`.`Id`
LIMIT @take

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`t1`.`Id`,
	`t1`.`Grp`,
	`t1`.`Value`
FROM
	`NullsTable` `t1`

