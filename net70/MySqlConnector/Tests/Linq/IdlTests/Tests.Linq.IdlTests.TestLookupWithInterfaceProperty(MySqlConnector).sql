BeforeExecute
-- MySqlConnector MySql
DECLARE @id Int32
SET     @id = 1
DECLARE @take Int32
SET     @take = 2

SELECT
	`obj`.`FirstName`,
	`obj`.`LastName`,
	`obj`.`MiddleName`,
	`obj`.`Gender`,
	`obj`.`PersonID`
FROM
	`Person` `obj`
WHERE
	`obj`.`PersonID` = @id
LIMIT @take

