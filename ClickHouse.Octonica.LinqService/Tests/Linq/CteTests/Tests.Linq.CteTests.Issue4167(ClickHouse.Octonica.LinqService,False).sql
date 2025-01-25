BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS Issue4167Table

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS Issue4167Table
(
	ID        Int32,
	Value     Nullable(String),
	EnumValue Nullable(Int32),

	PRIMARY KEY (ID)
)
ENGINE = MergeTree()
ORDER BY ID

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO Issue4167Table
(
	ID,
	Value,
	EnumValue
)
VALUES
(
	1,
	'000001',
	0
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO Issue4167Table
(
	ID,
	Value,
	EnumValue
)
VALUES
(
	2,
	'000001',
	3
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO Issue4167Table
(
	ID,
	Value,
	EnumValue
)
VALUES
(
	3,
	'000001',
	NULL
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO Issue4167Table
(
	ID,
	Value,
	EnumValue
)
VALUES
(
	4,
	'000002',
	0
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	CASE
		WHEN g_1.EnumValue IS NOT NULL THEN g_1.EnumValue
		ELSE 0
	END
FROM
	Issue4167Table g_1
WHERE
	g_1.Value = '000001'
GROUP BY
	g_1.Value,
	g_1.EnumValue
ORDER BY
	CASE
		WHEN g_1.EnumValue IS NOT NULL THEN g_1.EnumValue
		ELSE 0
	END

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS Issue4167Table

