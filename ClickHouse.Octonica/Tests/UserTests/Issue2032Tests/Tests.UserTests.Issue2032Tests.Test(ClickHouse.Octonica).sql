BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS Issue2032Table

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS Issue2032Table
(
	Id       Int32,
	Decimal1 Decimal128(4),
	Decimal2 Nullable(Decimal128(4)),
	Decimal3 Nullable(Decimal128(4)),
	Int1     Nullable(Int32),
	Int2     Nullable(Int32)
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO Issue2032Table
(
	Id,
	Decimal1,
	Decimal2,
	Decimal3,
	Int1,
	Int2
)
VALUES
(1,toDecimal128('123.456', 4),NULL,NULL,NULL,NULL),
(2,toDecimal128('-123.456', 4),toDecimal128('678.903', 4),toDecimal128('3523.2352', 4),-123,345)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	r.Id,
	r.Decimal1,
	CASE
		WHEN r.Decimal2 IS NOT NULL THEN r.Decimal2
		ELSE toDecimal128('0', 4)
	END,
	Coalesce(r.Decimal3, toDecimal128('0.1', 4)),
	CASE
		WHEN r.Int1 IS NOT NULL THEN r.Int1
		ELSE 0
	END,
	Coalesce(r.Int2, 22)
FROM
	Issue2032Table r
ORDER BY
	r.Id

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS Issue2032Table

