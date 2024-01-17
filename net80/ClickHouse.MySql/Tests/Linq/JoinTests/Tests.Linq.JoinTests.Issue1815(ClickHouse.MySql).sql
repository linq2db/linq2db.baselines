BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS StLink

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS StLink
(
	InId          Int32,
	InMaxQuantity Nullable(Float64),
	InMinQuantity Nullable(Float64),

	PRIMARY KEY (InId)
)
ENGINE = MergeTree()
ORDER BY InId

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO StLink
(
	InId,
	InMaxQuantity,
	InMinQuantity
)
VALUES
(toInt32(1),toFloat64(2),toFloat64(1)),
(toInt32(2),NULL,NULL)

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS EdtLink

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS EdtLink
(
	InId          Int32,
	InMaxQuantity Nullable(Float64),
	InMinQuantity Nullable(Float64),

	PRIMARY KEY (InId)
)
ENGINE = MergeTree()
ORDER BY InId

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO EdtLink
(
	InId,
	InMaxQuantity,
	InMinQuantity
)
VALUES
(toInt32(2),toFloat64(4),toFloat64(3))

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	x.InId,
	j.InId,
	j.InMaxQuantity,
	j.InMinQuantity,
	x.InMinQuantity,
	x.InMaxQuantity
FROM
	StLink x
		LEFT JOIN EdtLink j ON x.InId = j.InId
WHERE
	x.InId = toInt32(1)
LIMIT toInt32(2)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	x.InId,
	j.InId,
	j.InMaxQuantity,
	j.InMinQuantity,
	x.InMinQuantity,
	x.InMaxQuantity
FROM
	StLink x
		LEFT JOIN EdtLink j ON x.InId = j.InId
WHERE
	x.InId = toInt32(2)
LIMIT toInt32(2)

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS EdtLink

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS StLink

