BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

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

