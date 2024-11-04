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
				`t2`.`ID`,
				MAX(`t2`.`DateTimeValue`) as `c1`
			FROM
				`LinqDataTypes` `t2`
			WHERE
				`t2`.`ID` = 1 AND `t2`.`DateTimeValue` <= @Date
			GROUP BY
				`t2`.`ID`
		) `t1` ON `t1_1`.`ID` = `t1`.`ID` AND `t1_1`.`DateTimeValue` = `t1`.`c1`

