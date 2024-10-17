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
(1,'000001',0),
(2,'000001',3),
(3,'000001',NULL),
(4,'000002',0)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t1.EnumValue
FROM
	(
		SELECT
			CASE
				WHEN r.EnumValue IS NOT NULL THEN r.EnumValue
				ELSE 0
			END as EnumValue
		FROM
			Issue4167Table r
		WHERE
			r.Value = '000001'
		GROUP BY
			r.Value,
			r.EnumValue
	) t1
ORDER BY
	t1.EnumValue

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS Issue4167Table

