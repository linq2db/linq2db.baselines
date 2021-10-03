BeforeExecute
-- MySql

SELECT
	Count(*)
FROM
	`Person` `p`
WHERE
	LOCATE('jOh', `p`.`FirstName`) > 0 AND `p`.`PersonID` = 1

BeforeExecute
-- MySql

SELECT
	Count(*)
FROM
	`Person` `p`
WHERE
	(LOCATE('jOh', `p`.`FirstName`) <= 0) AND `p`.`PersonID` = 1

