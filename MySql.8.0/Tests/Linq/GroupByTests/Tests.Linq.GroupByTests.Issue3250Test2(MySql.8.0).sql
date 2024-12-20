BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	Concat(COUNT(*), ' items have not been processed, e.g. #', MIN(`s`.`PersonID`), '.')
FROM
	`Person` `s`
WHERE
	`s`.`LastName` <> 'ERROR'
HAVING
	COUNT(*) > 0

