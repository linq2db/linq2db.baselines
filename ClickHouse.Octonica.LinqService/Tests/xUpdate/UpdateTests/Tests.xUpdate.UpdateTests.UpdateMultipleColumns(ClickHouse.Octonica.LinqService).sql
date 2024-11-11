BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO LinqDataTypes
(
	ID,
	MoneyValue,
	SmallIntValue
)
VALUES
(
	1001,
	toDecimal64('1000', 4),
	toInt16(100)
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

ALTER TABLE
	LinqDataTypes
UPDATE
	MoneyValue = toDecimal64('2000', 4),
	toInt32(SmallIntValue) = 200
WHERE
	ID = 1001

