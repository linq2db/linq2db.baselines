BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`p`.`FirstName`
FROM
	`Person` `p`
WHERE
	`p`.`PersonID` = 1
LIMIT 2

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
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
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
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
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
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
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @nameToCheck VarChar(4) -- String
SET     @nameToCheck = 'JOH%'

SELECT
	COUNT(*)
FROM
	`Person` `p`
WHERE
	`p`.`FirstName` COLLATE utf8_bin NOT LIKE @nameToCheck ESCAPE '~' AND
	`p`.`PersonID` = 1

