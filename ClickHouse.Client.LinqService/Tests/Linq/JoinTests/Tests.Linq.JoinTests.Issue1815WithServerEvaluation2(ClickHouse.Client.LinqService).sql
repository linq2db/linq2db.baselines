BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS StLink

BeforeExecute
-- ClickHouse.Client ClickHouse

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
-- ClickHouse.Client ClickHouse

INSERT INTO StLink
(
	InId,
	InMaxQuantity,
	InMinQuantity
)
VALUES
(
	1,
	toFloat64(2),
	toFloat64(1)
)

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO StLink
(
	InId,
	InMaxQuantity,
	InMinQuantity
)
VALUES
(
	2,
	NULL,
	NULL
)

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS EdtLink

BeforeExecute
-- ClickHouse.Client ClickHouse

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
-- ClickHouse.Client ClickHouse

INSERT INTO EdtLink
(
	InId,
	InMaxQuantity,
	InMinQuantity
)
VALUES
(
	2,
	toFloat64(4),
	toFloat64(3)
)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t1.InId,
	CASE
		WHEN e.InId IS NULL THEN t1.InMinQuantity
		ELSE e.InMinQuantity
	END,
	CASE
		WHEN e.InId IS NULL THEN t1.InMaxQuantity
		ELSE e.InMaxQuantity
	END
FROM
	StLink t1
		LEFT JOIN EdtLink e ON t1.InId = e.InId
WHERE
	t1.InId = 1
LIMIT 2

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t1.InId,
	CASE
		WHEN e.InId IS NULL THEN t1.InMinQuantity
		ELSE e.InMinQuantity
	END,
	CASE
		WHEN e.InId IS NULL THEN t1.InMaxQuantity
		ELSE e.InMaxQuantity
	END
FROM
	StLink t1
		LEFT JOIN EdtLink e ON t1.InId = e.InId
WHERE
	t1.InId = 2
LIMIT 2

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS EdtLink

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS StLink

