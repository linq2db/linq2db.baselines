BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO LinqDataTypes
(
	ID,
	MoneyValue,
	CAST(LinqDataTypes.SmallIntValue AS Int32)
)
VALUES
(
	1001,
	toDecimal64('100', 4),
	200
)

