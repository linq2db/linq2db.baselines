﻿BeforeExecute
-- MariaDB MySql.Official MySql

SELECT
	`p`.`FirstName`
FROM
	`Person` `p`
WHERE
	`p`.`PersonID` = 1
LIMIT 2

BeforeExecute
-- MariaDB MySql.Official MySql
DECLARE @nameToCheck VarChar(4) -- String
SET     @nameToCheck = 'Joh%'

SELECT
	Count(*)
FROM
	`Person` `p`
WHERE
	`p`.`FirstName` COLLATE utf8_bin LIKE @nameToCheck ESCAPE '~' AND
	`p`.`PersonID` = 1

BeforeExecute
-- MariaDB MySql.Official MySql
DECLARE @nameToCheck VarChar(4) -- String
SET     @nameToCheck = 'Joh%'

SELECT
	Count(*)
FROM
	`Person` `p`
WHERE
	`p`.`FirstName` COLLATE utf8_bin NOT LIKE @nameToCheck ESCAPE '~' AND
	`p`.`PersonID` = 1

BeforeExecute
-- MariaDB MySql.Official MySql
DECLARE @nameToCheck VarChar(4) -- String
SET     @nameToCheck = 'JOH%'

SELECT
	Count(*)
FROM
	`Person` `p`
WHERE
	`p`.`FirstName` COLLATE utf8_bin LIKE @nameToCheck ESCAPE '~' AND
	`p`.`PersonID` = 1

BeforeExecute
-- MariaDB MySql.Official MySql
DECLARE @nameToCheck VarChar(4) -- String
SET     @nameToCheck = 'JOH%'

SELECT
	Count(*)
FROM
	`Person` `p`
WHERE
	`p`.`FirstName` COLLATE utf8_bin NOT LIKE @nameToCheck ESCAPE '~' AND
	`p`.`PersonID` = 1

