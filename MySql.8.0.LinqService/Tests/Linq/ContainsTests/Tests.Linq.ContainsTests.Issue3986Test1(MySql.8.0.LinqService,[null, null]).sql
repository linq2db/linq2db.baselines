BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`r`.`FirstName`,
	`r`.`PersonID`,
	`r`.`LastName`,
	`r`.`MiddleName`,
	`r`.`Gender`
FROM
	`Person` `r`
WHERE
	`r`.`PersonID` = 3 AND `r`.`MiddleName` IS NULL

