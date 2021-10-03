BeforeExecute
-- MySql55 MySql

SELECT
	`p`.`FirstName`
FROM
	`Person` `p`
WHERE
	Concat(`p`.`FirstName`, ' I') = 'John I'

