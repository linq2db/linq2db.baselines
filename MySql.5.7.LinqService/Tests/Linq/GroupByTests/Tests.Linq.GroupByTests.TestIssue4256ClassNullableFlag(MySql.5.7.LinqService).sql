﻿BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`it_1`.`IsActive`,
	`it_1`.`Other`
FROM
	(
		SELECT
			1 as `IsActive`,
			`it`.`SmallIntValue` <> 0 as `Other`
		FROM
			`LinqDataTypes` `it`
	) `it_1`
GROUP BY
	`it_1`.`IsActive`,
	`it_1`.`Other`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`t1`.`ID`,
	`t1`.`MoneyValue`,
	`t1`.`DateTimeValue`,
	`t1`.`BoolValue`,
	`t1`.`GuidValue`,
	`t1`.`BinaryValue`,
	`t1`.`SmallIntValue`,
	`t1`.`StringValue`
FROM
	`LinqDataTypes` `t1`

