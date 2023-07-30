BeforeExecute
-- MySqlConnector MySql

SELECT
	`x`.`PersonID`
FROM
	`Person` `x`
WHERE
	`x`.`FirstName` IN ('John')

BeforeExecute
-- MySqlConnector MySql
DECLARE @st VarChar(4) -- String
SET     @st = 'John'

SELECT
	`x`.`PersonID`
FROM
	`Person` `x`
WHERE
	`x`.`FirstName` IN (@st)

