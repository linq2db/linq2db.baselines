BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS TrimTestTable

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS TrimTestTable
(
	ID   Int32,
	Data Nullable(String),

	PRIMARY KEY (ID)
)
ENGINE = MergeTree()
ORDER BY ID

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO TrimTestTable
(
	ID,
	Data
)
VALUES
(
	1,
	'***OOO***'
)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.ID,
	r.Data
FROM
	TrimTestTable r
ORDER BY
	r.ID

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.ID,
	r.Data
FROM
	TrimTestTable r
ORDER BY
	r.ID

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS TrimTestTable

