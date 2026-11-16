-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @Value String(1) -- AnsiStringFixedLength
SET     @Value = 'F'

SELECT
	`p`.`PersonID`
FROM
	`Person` `p`
WHERE
	`p`.`Gender` = @Value

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`FirstName`,
	`t1`.`PersonID`,
	`t1`.`LastName`,
	`t1`.`MiddleName`,
	`t1`.`Gender`
FROM
	`Person` `t1`

