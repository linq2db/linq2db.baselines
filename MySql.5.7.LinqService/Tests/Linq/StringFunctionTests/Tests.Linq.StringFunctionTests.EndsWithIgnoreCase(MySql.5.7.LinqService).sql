BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	COUNT(*)
FROM
	`Person` `p`
WHERE
	`p`.`FirstName` LIKE '%JOHN' ESCAPE '~' AND `p`.`PersonID` = 1

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	COUNT(*)
FROM
	`Person` `p`
WHERE
	`p`.`FirstName` NOT LIKE '%JOHN' ESCAPE '~' AND `p`.`PersonID` = 1

