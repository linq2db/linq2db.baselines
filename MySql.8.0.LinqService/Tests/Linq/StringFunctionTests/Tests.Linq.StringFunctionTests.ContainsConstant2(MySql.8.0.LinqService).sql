BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80 (asynchronously)

SELECT
	COUNT(*)
FROM
	`Person` `p`
WHERE
	LOCATE('o%h', `p`.`FirstName`) > 0 AND `p`.`PersonID` = 1

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80 (asynchronously)

SELECT
	COUNT(*)
FROM
	`Person` `p`
WHERE
	LOCATE('o%h', `p`.`FirstName`) <= 0 AND `p`.`PersonID` = 1

