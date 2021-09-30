BeforeExecute
-- MySql MySql.Official MySql

SELECT
	Count(*)
FROM
	`Person` `p`
WHERE
	LOCATE('joh', Lower(`p`.`FirstName`)) = 1 AND `p`.`PersonID` = 1

BeforeExecute
-- MySql MySql.Official MySql

SELECT
	Count(*)
FROM
	`Person` `p`
WHERE
	(LOCATE('joh', Lower(`p`.`FirstName`)) <> 1) AND `p`.`PersonID` = 1

