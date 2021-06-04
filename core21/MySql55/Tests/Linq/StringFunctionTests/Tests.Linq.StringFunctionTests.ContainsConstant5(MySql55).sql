BeforeExecute
-- MySql55 MySql.Official MySql

SELECT
	Count(*)
FROM
	`Person` `p`
WHERE
	`p`.`PersonID` = 1 AND '123[456' LIKE '%~[%' ESCAPE '~'

