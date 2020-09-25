BeforeExecute
-- MariaDB MySql.Official MySql

DELETE `t1`
FROM
	`LinqDataTypes` `t1`
WHERE
	`t1`.`ID` > 1000

BeforeExecute
-- MariaDB MySql.Official MySql

INSERT INTO `LinqDataTypes`
(
	`ID`,
	`GuidValue`,
	`BoolValue`
)
SELECT
	Cast(Floor(`t1`.`c1` + 1001) as SIGNED),
	Uuid(),
	1
FROM
	(
		SELECT DISTINCT
			Floor(Cast(`_`.`ID` as Decimal(29,10)) / 3) as `c1`
		FROM
			`LinqDataTypes` `_`
	) `t1`

BeforeExecute
-- MariaDB MySql.Official MySql

DELETE `t1`
FROM
	`LinqDataTypes` `t1`
WHERE
	`t1`.`ID` > 1000

