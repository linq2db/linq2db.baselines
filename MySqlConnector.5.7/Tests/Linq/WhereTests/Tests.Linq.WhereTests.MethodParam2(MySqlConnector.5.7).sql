-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @t Int32
SET     @t = 1

SELECT
	`p`.`PersonID`
FROM
	`Person` `p`
WHERE
	`p`.`PersonID` = @t

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @t Int32
SET     @t = 2

SELECT
	`p`.`PersonID`
FROM
	`Person` `p`
WHERE
	`p`.`PersonID` = @t

