BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`p2`.`PersonID`,
	TRIM(TRAILING '' FROM Concat(`p2`.`FirstName`, ''))
FROM
	`Person` `p2`
WHERE
	`p2`.`PersonID` = 1

