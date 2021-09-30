BeforeExecute
-- MySql55 MySql.Official MySql

SELECT
	Count(*)
FROM
	`Person` `p`
WHERE
	LOCATE('JOHN', `p`.`FirstName`, Length(`p`.`FirstName`) - 3) = (Length(`p`.`FirstName`) - 3) AND
	`p`.`PersonID` = 1

BeforeExecute
-- MySql55 MySql.Official MySql

SELECT
	Count(*)
FROM
	`Person` `p`
WHERE
	(LOCATE('JOHN', `p`.`FirstName`, Length(`p`.`FirstName`) - 3) <> (Length(`p`.`FirstName`) - 3)) AND
	`p`.`PersonID` = 1

