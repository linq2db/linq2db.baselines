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
	toInt32(1),
	'000001',
	toInt32(0)
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
	toInt32(2),
	'000001',
	toInt32(3)
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
	toInt32(3),
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
	toInt32(4),
	'000002',
	toInt32(0)
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t.EnumValue
FROM
	Issue4167Table t
WHERE
	t.Value = '000001'
GROUP BY
	t.Value,
	t.EnumValue
ORDER BY
	Coalesce(t.EnumValue, toInt32(0))

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS Issue4167Table

