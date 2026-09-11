-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @firstName VarChar(4000) -- String
SET     @firstName = 'John'

SELECT
	`p`.`FirstName`,
	`p`.`PersonID`,
	`p`.`LastName`,
	`p`.`MiddleName`,
	`p`.`Gender`
FROM
	`Person` `p`
WHERE
	`p`.`FirstName` = @firstName OR `p`.`LastName` = @firstName

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @firstName VarChar(4) -- String
SET     @firstName = 'John'

SELECT
	`p`.`FirstName`,
	`p`.`PersonID`,
	`p`.`LastName`,
	`p`.`MiddleName`,
	`p`.`Gender`
FROM
	`Person` `p`
WHERE
	`p`.`FirstName` = @firstName OR `p`.`LastName` = @firstName
LIMIT 2

