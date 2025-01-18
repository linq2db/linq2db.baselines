BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`i`.`Id`,
	Coalesce((
		SELECT
			`a_SubDatas`.`Reason`
		FROM
			`SubData2` `a_SubDatas`
		WHERE
			`a_SubData`.`Id` = `a_SubDatas`.`Id`
		LIMIT 1
	), '')
FROM
	`Data` `i`
		LEFT JOIN `SubData1` `a_SubData` ON `i`.`Id` = `a_SubData`.`Id`
ORDER BY
	`i`.`Id`

