BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DELETE   `c_1`
FROM
	`LinqDataTypes` `c_1`
WHERE
	`c_1`.`ID` > 1000

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @BoolValue Bool -- Boolean
SET     @BoolValue = 1

INSERT INTO `LinqDataTypes`
(
	`ID`,
	`GuidValue`,
	`BoolValue`
)
SELECT
	CAST(Floor(`t2`.`c1` + 1001) AS SIGNED),
	Uuid(),
	@BoolValue
FROM
	(
		SELECT DISTINCT
			Floor(CAST(`t1`.`ID` AS DOUBLE) / 3) as `c1`
		FROM
			`LinqDataTypes` `t1`
	) `t2`

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DELETE   `c_1`
FROM
	`LinqDataTypes` `c_1`
WHERE
	`c_1`.`ID` > 1000

