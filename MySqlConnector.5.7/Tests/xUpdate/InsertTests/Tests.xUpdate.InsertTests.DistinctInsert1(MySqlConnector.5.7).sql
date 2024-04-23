BeforeExecute
BeginTransaction
BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DELETE   `c_1`
FROM
	`LinqDataTypes` `c_1`
WHERE
	`c_1`.`ID` > 1000

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

INSERT INTO `LinqDataTypes`
(
	`ID`,
	`GuidValue`,
	`BoolValue`
)
SELECT
	CAST(Floor(`t1`.`c1` + 1001) AS SIGNED),
	Uuid(),
	1
FROM
	(
		SELECT DISTINCT
			Floor(CAST(`_`.`ID` AS DECIMAL(29, 10)) / 3) as `c1`
		FROM
			`LinqDataTypes` `_`
	) `t1`

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DELETE   `c_1`
FROM
	`LinqDataTypes` `c_1`
WHERE
	`c_1`.`ID` > 1000

