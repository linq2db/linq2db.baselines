BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Issue4167Table

BeforeExecute
-- ClickHouse.MySql ClickHouse

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
-- ClickHouse.MySql ClickHouse

INSERT INTO Issue4167Table
(
	ID,
	Value,
	EnumValue
)
VALUES
(toInt32(1),'000001',toInt32(0)),
(toInt32(2),'000001',toInt32(3)),
(toInt32(3),'000001',NULL),
(toInt32(4),'000002',toInt32(0))

BeforeExecute
-- ClickHouse.MySql ClickHouse

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
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Issue4167Table

