-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	COUNT(*)
FROM
	`Person` `p`
WHERE
	LOCATE('jOh', `p`.`FirstName`) > 0 AND `p`.`PersonID` = 1

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	COUNT(*)
FROM
	`Person` `p`
WHERE
	LOCATE('jOh', `p`.`FirstName`) <= 0 AND `p`.`PersonID` = 1

