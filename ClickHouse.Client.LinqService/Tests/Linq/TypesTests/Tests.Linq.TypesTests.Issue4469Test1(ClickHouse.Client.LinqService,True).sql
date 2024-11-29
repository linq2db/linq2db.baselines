BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS Issue4469Table

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS Issue4469Table
(
	Integer Int32,
	Decimal Decimal128(5),
	Double  Float64
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO Issue4469Table
(
	Integer,
	Decimal,
	Double
)
VALUES
(
	100,
	toDecimal128('100', 5),
	toFloat64(100)
)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	v.Integer / 33,
	toDecimal128(toFloat64(v.Decimal) / 33, toUInt8(5)),
	v.Double / 33
FROM
	Issue4469Table v
LIMIT 2

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS Issue4469Table

