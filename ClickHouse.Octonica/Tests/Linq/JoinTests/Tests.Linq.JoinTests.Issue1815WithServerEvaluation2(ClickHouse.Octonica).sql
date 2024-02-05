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
(toInt32(1),toFloat64(2),toFloat64(1)),
(toInt32(2),NULL,NULL)

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
(toInt32(2),toFloat64(4),toFloat64(3))

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	x.InId,
	CASE
		WHEN j.InId IS NULL THEN x.InMinQuantity
		ELSE j.InMinQuantity
	END,
	CASE
		WHEN j.InId IS NULL THEN x.InMaxQuantity
		ELSE j.InMaxQuantity
	END
FROM
	StLink x
		LEFT JOIN EdtLink j ON x.InId = j.InId
WHERE
	x.InId = toInt32(1)
LIMIT toInt32(2)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	x.InId,
	CASE
		WHEN j.InId IS NULL THEN x.InMinQuantity
		ELSE j.InMinQuantity
	END,
	CASE
		WHEN j.InId IS NULL THEN x.InMaxQuantity
		ELSE j.InMaxQuantity
	END
FROM
	StLink x
		LEFT JOIN EdtLink j ON x.InId = j.InId
WHERE
	x.InId = toInt32(2)
LIMIT toInt32(2)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS EdtLink

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS StLink

