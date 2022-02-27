BeforeExecute
-- MariaDB MySql.Official MySql

SELECT
	`x`.`PersonID`
FROM
	`Person` `x`
WHERE
	`x`.`FirstName` IN ('John')

BeforeExecute
-- MariaDB MySql.Official MySql
DECLARE @st VarChar(4) -- String
SET     @st = 'John'

SELECT
	`x`.`PersonID`
FROM
	`Person` `x`
WHERE
	`x`.`FirstName` IN (@st)

