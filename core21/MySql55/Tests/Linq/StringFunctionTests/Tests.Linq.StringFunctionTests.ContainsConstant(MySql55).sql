BeforeExecute
-- MySql55 MySql

SELECT
	Count(*)
FROM
	`Person` `p`
WHERE
	LOCATE('jOh', `p`.`FirstName`) > 0 AND `p`.`PersonID` = 1

BeforeExecute
-- MySql55 MySql

SELECT
	Count(*)
FROM
	`Person` `p`
WHERE
	(LOCATE('jOh', `p`.`FirstName`) <= 0) AND `p`.`PersonID` = 1

