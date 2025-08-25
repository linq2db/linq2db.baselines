BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80 (asynchronously)
DECLARE @id Int32
SET     @id = 1

SELECT
	`p1`.`PersonID`,
	`p2`.`FirstName`
FROM
	`Person` `p1`,
	`Person` `p2`
WHERE
	`p2`.`PersonID` = @id AND `p1`.`PersonID` = `p2`.`PersonID`

