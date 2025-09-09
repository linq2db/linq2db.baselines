BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57 (asynchronously)
DECLARE @p Int32
SET     @p = 1

SELECT
	`p`.`LastName`
FROM
	`Person` `p`
WHERE
	`p`.`PersonID` = @p
LIMIT 2

