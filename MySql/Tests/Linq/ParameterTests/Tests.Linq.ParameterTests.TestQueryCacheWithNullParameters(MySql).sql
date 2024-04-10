BeforeExecute
-- MySql MySql.Official MySql
DECLARE @id Int32
SET     @id = 0

SELECT
	Count(*)
FROM
	`Person` `_`
WHERE
	`_`.`PersonID` = @id

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @id Int32
SET     @id = 1

SELECT
	Count(*)
FROM
	`Person` `_`
WHERE
	`_`.`PersonID` = @id

