-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`p`.`FirstName`
FROM
	`Person` `p`
WHERE
	`p`.`PersonID` = 1
LIMIT 2

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @nameToCheck VarChar(4) -- String
SET     @nameToCheck = 'Joh%'

SELECT
	COUNT(*)
FROM
	`Person` `p`
WHERE
	`p`.`FirstName` COLLATE utf8_bin LIKE @nameToCheck ESCAPE '~' AND
	`p`.`PersonID` = 1

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @nameToCheck VarChar(4) -- String
SET     @nameToCheck = 'Joh%'

SELECT
	COUNT(*)
FROM
	`Person` `p`
WHERE
	`p`.`FirstName` COLLATE utf8_bin NOT LIKE @nameToCheck ESCAPE '~' AND
	`p`.`PersonID` = 1

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @nameToCheck VarChar(4) -- String
SET     @nameToCheck = 'JOH%'

SELECT
	COUNT(*)
FROM
	`Person` `p`
WHERE
	`p`.`FirstName` COLLATE utf8_bin LIKE @nameToCheck ESCAPE '~' AND
	`p`.`PersonID` = 1

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @nameToCheck VarChar(4) -- String
SET     @nameToCheck = 'JOH%'

SELECT
	COUNT(*)
FROM
	`Person` `p`
WHERE
	`p`.`FirstName` COLLATE utf8_bin NOT LIKE @nameToCheck ESCAPE '~' AND
	`p`.`PersonID` = 1

