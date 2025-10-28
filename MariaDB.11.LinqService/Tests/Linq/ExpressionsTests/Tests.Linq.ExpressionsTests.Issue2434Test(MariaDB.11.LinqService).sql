BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB (asynchronously)

SELECT
	`t1`.`Id`,
	`t1`.`FirstName`,
	`t1`.`LastName`,
	Concat(Coalesce(`t1`.`FirstName`, ''), ' ', Coalesce(`t1`.`LastName`, ''))
FROM
	`Issue2434Table` `t1`
ORDER BY
	Concat(Coalesce(`t1`.`FirstName`, ''), ' ', Coalesce(`t1`.`LastName`, ''))

