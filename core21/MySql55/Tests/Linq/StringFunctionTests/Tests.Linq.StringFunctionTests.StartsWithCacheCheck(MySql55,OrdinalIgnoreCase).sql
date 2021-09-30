BeforeExecute
-- MySql55 MySql.Official MySql
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
-- MySql55 MySql.Official MySql
DECLARE @nameToCheck_1 VarChar(3) -- String
SET     @nameToCheck_1 = 'joh'

SELECT
	Count(*)
FROM
	`Person` `p`
WHERE
	LOCATE(@nameToCheck_1, Lower(`p`.`FirstName`)) = 1 AND
	`p`.`PersonID` = 1

BeforeExecute
-- MySql55 MySql.Official MySql
DECLARE @nameToCheck_1 VarChar(3) -- String
SET     @nameToCheck_1 = 'joh'

SELECT
	Count(*)
FROM
	`Person` `p`
WHERE
	(LOCATE(@nameToCheck_1, Lower(`p`.`FirstName`)) <> 1) AND
	`p`.`PersonID` = 1

