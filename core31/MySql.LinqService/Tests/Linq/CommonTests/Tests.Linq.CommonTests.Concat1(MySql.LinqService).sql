BeforeExecute
-- MySql MySql.Official MySql

SELECT 
	`p`.`FirstName`
FROM
	`Person` `p`
WHERE
	Concat(`p`.`FirstName`, ' I') = 'John I'

