BeforeExecute
-- MySql55 MySql.Official MySql

SELECT
	Count(*)
FROM
	`Person` `p`
WHERE
	`p`.`FirstName` LIKE '%jOh%' ESCAPE '~' AND `p`.`PersonID` = 1

BeforeExecute
-- MySql55 MySql.Official MySql

SELECT
	Count(*)
FROM
	`Person` `p`
WHERE
	`p`.`FirstName` NOT LIKE '%jOh%' ESCAPE '~' AND `p`.`PersonID` = 1

