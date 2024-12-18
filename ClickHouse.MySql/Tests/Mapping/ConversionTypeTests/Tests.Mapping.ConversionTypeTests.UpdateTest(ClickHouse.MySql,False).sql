BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS TrimTestTable

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS TrimTestTable
(
	ID   Int32,
	Data Nullable(String),

	PRIMARY KEY (ID)
)
ENGINE = MergeTree()
ORDER BY ID

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO TrimTestTable
(
	ID,
	Data
)
VALUES
(1,'***XXX***'),
(2,'***HHH***'),
(3,'***VVV***')

BeforeExecute
-- ClickHouse.MySql ClickHouse

ALTER TABLE
	TrimTestTable
UPDATE
	Data = '***III***'
WHERE
	ID = 3

BeforeExecute
-- ClickHouse.MySql ClickHouse

ALTER TABLE
	TrimTestTable
UPDATE
	Data = '***OOO***'
WHERE
	Data = '***XXX***' AND Data IS NOT NULL

BeforeExecute
-- ClickHouse.MySql ClickHouse

ALTER TABLE
	TrimTestTable
UPDATE
	Data = '***SSS***'
WHERE
	Data = '***HHH***' AND Data IS NOT NULL

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	r.ID,
	r.Data
FROM
	TrimTestTable r
ORDER BY
	r.ID

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	r.ID,
	r.Data
FROM
	TrimTestTable r
ORDER BY
	r.ID

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS TrimTestTable

