-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	Concat(CAST(COUNT(*) AS CHAR(11)), ' items have not been processed, e.g. #', Coalesce(CAST(MIN(`s`.`PersonID`) AS CHAR(11)), ''), '.')
FROM
	`Person` `s`
WHERE
	`s`.`LastName` <> 'ERROR'
HAVING
	COUNT(*) > 0

