BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS Issue4167Table

BeforeExecute
-- ClickHouse.Client ClickHouse

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
-- ClickHouse.Client ClickHouse

INSERT INTO Issue4167Table
(
	ID,
	Value,
	EnumValue
)
VALUES
(1,'000001',0),
(2,'000001',3),
(3,'000001',NULL),
(4,'000002',0)

BeforeExecute
-- ClickHouse.Client ClickHouse

WITH CTE_1 AS
(
	SELECT
		CASE
			WHEN g_1.EnumValue IS NOT NULL THEN g_1.EnumValue
			ELSE 0
		END as EnumValue
	FROM
		Issue4167Table g_1
	WHERE
		g_1.Value = '000001'
	GROUP BY
		g_1.Value,
		g_1.EnumValue
)
SELECT
	t1.EnumValue
FROM
	CTE_1 t1
ORDER BY
	t1.EnumValue

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS Issue4167Table

