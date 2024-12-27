BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @take Int32
SET     @take = 100

SELECT
	`t1`.`PersonID`,
	`t1`.`PersonID`
FROM
	`Person` `t1`
GROUP BY
	`t1`.`PersonID`,
	`t1`.`PersonID`
ORDER BY
	`t1`.`PersonID`
LIMIT @take

