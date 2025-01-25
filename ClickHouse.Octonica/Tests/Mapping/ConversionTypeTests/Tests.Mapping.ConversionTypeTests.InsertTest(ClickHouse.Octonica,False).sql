BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS TrimTestTable

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS TrimTestTable
(
	ID   Int32,
	Data Nullable(String),

	PRIMARY KEY (ID)
)
ENGINE = MergeTree()
ORDER BY ID

BeforeExecute
-- ClickHouse.Octonica ClickHouse

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
-- ClickHouse.Octonica ClickHouse

INSERT INTO TrimTestTable
(
	ID,
	Data
)
VALUES
(
	2,
	'***HHH***'
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO TrimTestTable
(
	ID,
	Data
)
VALUES
(
	3,
	'***VVV***'
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	r.ID,
	r.Data
FROM
	TrimTestTable r
ORDER BY
	r.ID

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	r.ID,
	r.Data
FROM
	TrimTestTable r
ORDER BY
	r.ID

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS TrimTestTable

