﻿BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	SUM(`grp_1`.`MoneyValue`),
	`grp_1`.`Year_1`,
	`grp_1`.`Month_1`
FROM
	(
		SELECT
			Extract(month from `grp`.`DateTimeValue`) as `Month_1`,
			Extract(year from `grp`.`DateTimeValue`) as `Year_1`,
			`grp`.`MoneyValue`
		FROM
			`LinqDataTypes` `grp`
	) `grp_1`
GROUP BY
	`grp_1`.`Month_1`,
	`grp_1`.`Year_1`

