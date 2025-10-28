BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`x`.`PersonID`
FROM
	`Person` `x`
WHERE
	`x`.`FirstName` IN ('John')

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @st VarChar(4) -- String
SET     @st = 'John'

SELECT
	`x`.`PersonID`
FROM
	`Person` `x`
WHERE
	`x`.`FirstName` IN (@st)

