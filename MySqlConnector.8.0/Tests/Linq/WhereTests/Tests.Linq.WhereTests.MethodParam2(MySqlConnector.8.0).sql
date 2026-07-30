-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @t Int32
SET     @t = 1

SELECT
	`p`.`PersonID`
FROM
	`Person` `p`
WHERE
	`p`.`PersonID` = @t

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @t Int32
SET     @t = 2

SELECT
	`p`.`PersonID`
FROM
	`Person` `p`
WHERE
	`p`.`PersonID` = @t

