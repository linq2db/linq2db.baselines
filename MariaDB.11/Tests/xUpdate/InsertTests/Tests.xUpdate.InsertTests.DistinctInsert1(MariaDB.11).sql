BeforeExecute
BeginTransaction
BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

DELETE  
FROM
	`LinqDataTypes`
WHERE
	`LinqDataTypes`.`ID` > 1000

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

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
			Floor(CAST(`t1`.`ID` AS DOUBLE) / 3) as `Value_1`
		FROM
			`LinqDataTypes` `t1`
	) `t2`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

DELETE  
FROM
	`LinqDataTypes`
WHERE
	`LinqDataTypes`.`ID` > 1000

