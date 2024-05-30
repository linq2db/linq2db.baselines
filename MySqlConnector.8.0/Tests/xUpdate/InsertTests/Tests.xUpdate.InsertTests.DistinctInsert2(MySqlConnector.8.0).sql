﻿BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DELETE  
FROM
	`LinqDataTypes`
WHERE
	`LinqDataTypes`.`ID` > 1000

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

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
			Floor(CAST(`t1`.`ID` AS DOUBLE) / 3) as `c1`
		FROM
			`LinqDataTypes` `t1`
	) `t2`

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DELETE  
FROM
	`LinqDataTypes`
WHERE
	`LinqDataTypes`.`ID` > 1000

