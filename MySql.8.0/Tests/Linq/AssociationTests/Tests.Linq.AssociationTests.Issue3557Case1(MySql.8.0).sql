﻿BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`i`.`Id`,
	CASE
		WHEN `a_SubData`.`Id` IS NULL THEN NULL
		ELSE (
			SELECT
				`a_SubDatas`.`Reason`
			FROM
				`SubData2` `a_SubDatas`
			WHERE
				`a_SubData`.`Id` = `a_SubDatas`.`Id`
			LIMIT 1
		)
	END
FROM
	`Data` `i`
		LEFT JOIN `SubData1` `a_SubData` ON `i`.`Id` = `a_SubData`.`Id`
ORDER BY
	`i`.`Id`

