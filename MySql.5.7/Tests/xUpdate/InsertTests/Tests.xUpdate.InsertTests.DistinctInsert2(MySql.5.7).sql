﻿BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DELETE   `c_1`
FROM
	`LinqDataTypes` `c_1`
WHERE
	`c_1`.`ID` > 1000

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

INSERT INTO `LinqDataTypes`
(
	`ID`,
	`GuidValue`,
	`BoolValue`
)
SELECT
	CAST(Floor(`t2`.`c1` + 1001) AS SIGNED),
	Uuid(),
	1
FROM
	(
		SELECT DISTINCT
			Floor(CAST(`t1`.`ID` AS DECIMAL(29, 10)) / 3) as `c1`
		FROM
			`LinqDataTypes` `t1`
	) `t2`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DELETE   `c_1`
FROM
	`LinqDataTypes` `c_1`
WHERE
	`c_1`.`ID` > 1000

