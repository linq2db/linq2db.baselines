-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	Concat(CAST(`g_2`.`Message` AS CHAR(11)), ' items have not been processed, e.g. #', Coalesce(CAST(`g_2`.`Message_1` AS CHAR(11)), ''), '.')
FROM
	(
		SELECT
			COUNT(*) as `Message`,
			MIN(`g_1`.`PersonID`) as `Message_1`
		FROM
			`Person` `g_1`
		WHERE
			`g_1`.`LastName` <> 'ERROR'
	) `g_2`
WHERE
	`g_2`.`Message` > 0

