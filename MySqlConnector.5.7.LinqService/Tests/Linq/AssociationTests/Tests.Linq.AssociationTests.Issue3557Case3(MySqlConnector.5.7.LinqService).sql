﻿BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`i`.`Id`,
	(
		SELECT
			`a_SubDatas`.`Reason`
		FROM
			`SubData2` `a_SubDatas`
		WHERE
			`a_SubData`.`Id` = `a_SubDatas`.`Id`
		LIMIT 1
	)
FROM
	`Data` `i`
		LEFT JOIN `SubData1` `a_SubData` ON `i`.`Id` = `a_SubData`.`Id`
ORDER BY
	`i`.`Id`

