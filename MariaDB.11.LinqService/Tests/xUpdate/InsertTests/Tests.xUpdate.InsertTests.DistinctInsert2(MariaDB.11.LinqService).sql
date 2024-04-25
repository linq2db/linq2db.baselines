BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DELETE   `c_1`
FROM
	`LinqDataTypes` `c_1`
WHERE
	`c_1`.`ID` > 1000

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
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
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DELETE   `c_1`
FROM
	`LinqDataTypes` `c_1`
WHERE
	`c_1`.`ID` > 1000

