BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`_`.`PersonID`,
	`_`.`Gender`,
	`_`.`FirstName`,
	`_`.`LastName`,
	`_`.`MiddleName`
FROM
	`Person` `_`
WHERE
	`_`.`PersonID` = 1
LIMIT 1

