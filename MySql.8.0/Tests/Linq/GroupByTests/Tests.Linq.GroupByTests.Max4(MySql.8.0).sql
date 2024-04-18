﻿BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @Date Datetime -- DateTime
SET     @Date = '2020-02-29'

SELECT
	`t1_1`.`MoneyValue`
FROM
	`LinqDataTypes` `t1_1`
		INNER JOIN (
			SELECT
				`sub`.`ID`,
				Max(`sub`.`DateTimeValue`) as `DateTimeValue`
			FROM
				`LinqDataTypes` `sub`
			WHERE
				`sub`.`ID` = 1 AND `sub`.`DateTimeValue` <= @Date
			GROUP BY
				`sub`.`ID`
		) `t1` ON `t1_1`.`ID` = `t1`.`ID` AND `t1_1`.`DateTimeValue` = `t1`.`DateTimeValue`

