BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO LinqDataTypes
(
	ID,
	MoneyValue,
	toInt32(LinqDataTypes.SmallIntValue)
)
VALUES
(
	1001,
	toDecimal64('100', 4),
	200
)

