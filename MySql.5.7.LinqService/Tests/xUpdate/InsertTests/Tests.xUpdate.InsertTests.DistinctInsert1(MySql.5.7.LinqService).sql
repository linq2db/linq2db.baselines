﻿BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DELETE  
FROM
	`LinqDataTypes`
WHERE
	`LinqDataTypes`.`ID` > 1000

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

INSERT INTO `LinqDataTypes`
(
	`ID`,
	`GuidValue`,
	`BoolValue`
)
SELECT
	CAST(Floor(`t2`.`Value_1` + 1001) AS SIGNED),
	Uuid(),
	1
FROM
	(
		SELECT DISTINCT
			Floor(CAST(`t1`.`ID` AS DECIMAL(29, 10)) / 3) as `Value_1`
		FROM
			`LinqDataTypes` `t1`
	) `t2`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DELETE  
FROM
	`LinqDataTypes`
WHERE
	`LinqDataTypes`.`ID` > 1000

