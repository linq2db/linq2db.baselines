-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`p2`.`PersonID`,
	REGEXP_REPLACE((CONCAT(`p2`.`FirstName`, '')), '(?-i)[]+$', '')
FROM
	`Person` `p2`
WHERE
	`p2`.`PersonID` = 1

