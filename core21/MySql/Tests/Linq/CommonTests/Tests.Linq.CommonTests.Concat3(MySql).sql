BeforeExecute
-- MySql MySql.Official MySql

SELECT 
	`p`.`FirstName`
FROM
	`Person` `p`
WHERE
	Concat(`p`.`FirstName`, ' ', Cast(1 as CHAR(11)), Cast(2 as CHAR(11))) = 'John 12'

