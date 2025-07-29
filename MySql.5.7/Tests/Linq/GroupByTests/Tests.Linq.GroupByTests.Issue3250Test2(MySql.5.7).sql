BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	Concat(COUNT(*), ' items have not been processed, e.g. #', MIN(`s`.`PersonID`), '.')
FROM
	`Person` `s`
WHERE
	`s`.`LastName` <> 'ERROR'
HAVING
	COUNT(*) > 0

