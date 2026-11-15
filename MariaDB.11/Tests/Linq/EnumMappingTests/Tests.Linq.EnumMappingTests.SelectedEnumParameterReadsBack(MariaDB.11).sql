-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @gender Int32
SET     @gender = 1

SELECT
	`p`.`PersonID`,
	@gender
FROM
	`Person` `p`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`FirstName`,
	`t1`.`PersonID`,
	`t1`.`LastName`,
	`t1`.`MiddleName`,
	`t1`.`Gender`
FROM
	`Person` `t1`

