BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS StLink

BeforeExecute
-- ClickHouse.Octonica ClickHouse

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
-- ClickHouse.Octonica ClickHouse

INSERT INTO StLink
(
	InId,
	InMaxQuantity,
	InMinQuantity
)
VALUES
(1,toFloat64(2),toFloat64(1)),
(2,NULL,NULL)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS EdtLink

BeforeExecute
-- ClickHouse.Octonica ClickHouse

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
-- ClickHouse.Octonica ClickHouse

INSERT INTO EdtLink
(
	InId,
	InMaxQuantity,
	InMinQuantity
)
VALUES
(2,toFloat64(4),toFloat64(3))

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t1.InId,
	e.InId,
	t1.InMinQuantity,
	e.InMinQuantity,
	t1.InMaxQuantity,
	e.InMaxQuantity
FROM
	StLink t1
		LEFT JOIN EdtLink e ON t1.InId = e.InId
WHERE
	t1.InId = 1
LIMIT 2

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t1.InId,
	e.InId,
	t1.InMinQuantity,
	e.InMinQuantity,
	t1.InMaxQuantity,
	e.InMaxQuantity
FROM
	StLink t1
		LEFT JOIN EdtLink e ON t1.InId = e.InId
WHERE
	t1.InId = 2
LIMIT 2

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS EdtLink

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS StLink

