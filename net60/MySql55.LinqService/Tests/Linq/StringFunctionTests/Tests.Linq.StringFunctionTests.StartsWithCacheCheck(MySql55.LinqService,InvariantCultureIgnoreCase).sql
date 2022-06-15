BeforeExecute
-- MySql55 MySql.Official MySql

SELECT
	`p`.`FirstName`
FROM
	`Person` `p`
WHERE
	`p`.`PersonID` = 1
LIMIT 2

BeforeExecute
-- MySql55 MySql.Official MySql

SELECT
	Count(*)
FROM
	`Person` `p`
WHERE
	Lower(`p`.`FirstName`) LIKE 'joh%' ESCAPE '~' AND `p`.`PersonID` = 1

BeforeExecute
-- MySql55 MySql.Official MySql

SELECT
	Count(*)
FROM
	`Person` `p`
WHERE
	Lower(`p`.`FirstName`) NOT LIKE 'joh%' ESCAPE '~' AND
	`p`.`PersonID` = 1

