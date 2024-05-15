BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`p`.`FirstName`
FROM
	`Person` `p`
WHERE
	`p`.`PersonID` = 1
LIMIT 2

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @nameToCheck VarChar(4) -- String
SET     @nameToCheck = 'Joh%'

SELECT
	COUNT(*)
FROM
	`Person` `p`
WHERE
	`p`.`FirstName` COLLATE utf8_bin LIKE @nameToCheck ESCAPE '~' AND
	`p`.`PersonID` = 1

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @nameToCheck VarChar(4) -- String
SET     @nameToCheck = 'Joh%'

SELECT
	COUNT(*)
FROM
	`Person` `p`
WHERE
	`p`.`FirstName` COLLATE utf8_bin NOT LIKE @nameToCheck ESCAPE '~' AND
	`p`.`PersonID` = 1

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @nameToCheck VarChar(4) -- String
SET     @nameToCheck = 'JOH%'

SELECT
	COUNT(*)
FROM
	`Person` `p`
WHERE
	`p`.`FirstName` COLLATE utf8_bin LIKE @nameToCheck ESCAPE '~' AND
	`p`.`PersonID` = 1

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @nameToCheck VarChar(4) -- String
SET     @nameToCheck = 'JOH%'

SELECT
	COUNT(*)
FROM
	`Person` `p`
WHERE
	`p`.`FirstName` COLLATE utf8_bin NOT LIKE @nameToCheck ESCAPE '~' AND
	`p`.`PersonID` = 1

