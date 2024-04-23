BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`_`.`PersonID`,
	`_`.`Gender`,
	`_`.`FirstName`,
	`_`.`MiddleName`,
	`_`.`LastName`
FROM
	`Person` `_`
WHERE
	`_`.`PersonID` = 1
LIMIT 1

