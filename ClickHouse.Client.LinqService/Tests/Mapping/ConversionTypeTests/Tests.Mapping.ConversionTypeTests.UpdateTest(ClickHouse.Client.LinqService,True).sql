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
	'***XXX***'
)

BeforeExecute
-- ClickHouse.Client ClickHouse

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
-- ClickHouse.Client ClickHouse

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
-- ClickHouse.Client ClickHouse

ALTER TABLE
	TrimTestTable
UPDATE
	Data = '***III***'
WHERE
	ID = 3

BeforeExecute
-- ClickHouse.Client ClickHouse

ALTER TABLE
	TrimTestTable
UPDATE
	Data = '***OOO***'
WHERE
	Data = '***XXX***' AND Data IS NOT NULL

BeforeExecute
-- ClickHouse.Client ClickHouse

ALTER TABLE
	TrimTestTable
UPDATE
	Data = '***SSS***'
WHERE
	Data = '***HHH***' AND Data IS NOT NULL

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

