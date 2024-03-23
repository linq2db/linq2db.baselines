BeforeExecute
BeginTransaction
BeforeExecute
-- MySql MySql.Official MySql

DELETE   `c_1`
FROM
	`LinqDataTypes` `c_1`
WHERE
	`c_1`.`ID` > 1000

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @BoolValue UByte -- Boolean
SET     @BoolValue = 1

INSERT INTO `LinqDataTypes`
(
	`ID`,
	`GuidValue`,
	`BoolValue`
)
SELECT
	Cast(Floor(`t1`.`c1` + 1001) as SIGNED),
	Uuid(),
	@BoolValue
FROM
	(
		SELECT DISTINCT
			Floor(Cast(`_`.`ID` as Decimal(29, 10)) / 3) as `c1`
		FROM
			`LinqDataTypes` `_`
	) `t1`

BeforeExecute
-- MySql MySql.Official MySql

DELETE   `c_1`
FROM
	`LinqDataTypes` `c_1`
WHERE
	`c_1`.`ID` > 1000

