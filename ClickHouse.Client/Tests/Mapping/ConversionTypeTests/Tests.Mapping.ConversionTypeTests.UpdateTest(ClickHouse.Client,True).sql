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
	Data = '***XXX***'

BeforeExecute
-- ClickHouse.Client ClickHouse

ALTER TABLE
	TrimTestTable
UPDATE
	Data = '***SSS***'
WHERE
	Data = '***HHH***'

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

