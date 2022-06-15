BeforeExecute
-- MySql55Connector MySqlConnector MySql

SELECT
	`p`.`FirstName`
FROM
	`Person` `p`
WHERE
	`p`.`FirstName` IS NULL
LIMIT 1

BeforeExecute
-- MySql55Connector MySqlConnector MySql
DECLARE @ID VarChar(4) -- String
SET     @ID = 'John'

SELECT
	`p`.`FirstName`
FROM
	`Person` `p`
WHERE
	`p`.`FirstName` = @ID
LIMIT 1

