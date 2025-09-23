BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57 (asynchronously)
DECLARE @Length Int32
SET     @Length = 2

SELECT
	(`p2`.`PersonID` * 2) / @Length,
	`p2`.`FirstName`
FROM
	`Person` `p2`

