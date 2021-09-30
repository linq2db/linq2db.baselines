BeforeExecute
-- MySql55 MySql.Official MySql

SELECT
	Count(*)
FROM
	`Person` `p`
WHERE
	LOCATE('joh', Lower(`p`.`FirstName`)) = 1 AND `p`.`PersonID` = 1

BeforeExecute
-- MySql55 MySql.Official MySql

SELECT
	Count(*)
FROM
	`Person` `p`
WHERE
	(LOCATE('joh', Lower(`p`.`FirstName`)) <> 1) AND `p`.`PersonID` = 1

