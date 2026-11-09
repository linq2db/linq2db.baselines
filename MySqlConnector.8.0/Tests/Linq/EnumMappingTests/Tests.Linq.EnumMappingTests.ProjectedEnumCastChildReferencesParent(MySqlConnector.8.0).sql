-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
SELECT
	`m_1`.`Gender`,
	`d`.`PersonID`
FROM
	(
		SELECT DISTINCT
			`p`.`Gender`
		FROM
			`Person` `p`
	) `m_1`
		INNER JOIN `Person` `d` ON `d`.`Gender` = `m_1`.`Gender`

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
SELECT
	`p`.`PersonID`,
	`p`.`Gender`
FROM
	`Person` `p`
ORDER BY
	`p`.`PersonID`

