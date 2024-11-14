BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	Concat(COUNT(*), ' items have not been processed, e.g. #', MIN(`s_1`.`ID`), '.')
FROM
	(
		SELECT
			`s`.`PersonID` as `ID`
		FROM
			`Person` `s`
		WHERE
			`s`.`LastName` <> 'ERROR'
		HAVING
			COUNT(*) > 0
	) `s_1`

