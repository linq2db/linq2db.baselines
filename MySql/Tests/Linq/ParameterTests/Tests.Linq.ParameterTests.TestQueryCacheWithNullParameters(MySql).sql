BeforeExecute
-- MySql MySql.Official MySql

SELECT
	Count(*)
FROM
	`Person` `_`
WHERE
	`_`.`PersonID` IS NULL

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

