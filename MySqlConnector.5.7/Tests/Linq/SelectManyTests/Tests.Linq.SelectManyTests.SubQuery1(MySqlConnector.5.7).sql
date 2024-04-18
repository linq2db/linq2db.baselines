BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @id Int32
SET     @id = 1

SELECT
	`p1`.`PersonID`,
	`p`.`FirstName`
FROM
	`Person` `p1`,
	`Person` `p`
WHERE
	`p1`.`PersonID` = `p`.`PersonID` AND `p`.`PersonID` = @id

