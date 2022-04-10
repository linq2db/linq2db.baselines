BeforeExecute
-- MySql MySql.Official MySql
DECLARE @take Int32
SET     @take = 2

SELECT
	`p`.`FirstName`
FROM
	`Person` `p`
WHERE
	`p`.`PersonID` = 1
LIMIT @take

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @nameToCheck_1 VarChar(4) -- String
SET     @nameToCheck_1 = 'Joh%'

SELECT
	Count(*)
FROM
	`Person` `p`
WHERE
	`p`.`FirstName` COLLATE utf8_bin LIKE @nameToCheck_1 ESCAPE '~' AND
	`p`.`PersonID` = 1

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @nameToCheck_1 VarChar(4) -- String
SET     @nameToCheck_1 = 'Joh%'

SELECT
	Count(*)
FROM
	`Person` `p`
WHERE
	`p`.`FirstName` COLLATE utf8_bin NOT LIKE @nameToCheck_1 ESCAPE '~' AND
	`p`.`PersonID` = 1

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @nameToCheck_1 VarChar(4) -- String
SET     @nameToCheck_1 = 'JOH%'

SELECT
	Count(*)
FROM
	`Person` `p`
WHERE
	`p`.`FirstName` COLLATE utf8_bin LIKE @nameToCheck_1 ESCAPE '~' AND
	`p`.`PersonID` = 1

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @nameToCheck_1 VarChar(4) -- String
SET     @nameToCheck_1 = 'JOH%'

SELECT
	Count(*)
FROM
	`Person` `p`
WHERE
	`p`.`FirstName` COLLATE utf8_bin NOT LIKE @nameToCheck_1 ESCAPE '~' AND
	`p`.`PersonID` = 1

