BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Issue4469Table

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS Issue4469Table
(
	Integer Int32,
	Decimal Decimal128(5),
	Double  Float64
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.MySql ClickHouse

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
-- ClickHouse.MySql ClickHouse

SELECT
	toFloat64(v.Integer) / 33,
	toFloat64(v.Decimal) / toFloat64(toDecimal128('33', 5)),
	v.Double / toFloat64(33)
FROM
	Issue4469Table v
LIMIT 2

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Issue4469Table

