-- ClickHouse.MySql ClickHouse

ALTER TABLE
	TrimTestTable
UPDATE
	Data = '***III***'
WHERE
	ID = 3

-- ClickHouse.MySql ClickHouse

ALTER TABLE
	TrimTestTable
UPDATE
	Data = '***OOO***'
WHERE
	Data = '***XXX***'

-- ClickHouse.MySql ClickHouse

ALTER TABLE
	TrimTestTable
UPDATE
	Data = '***SSS***'
WHERE
	Data = '***HHH***'

-- ClickHouse.MySql ClickHouse

SELECT
	r.ID,
	r.Data
FROM
	TrimTestTable r
ORDER BY
	r.ID

-- ClickHouse.MySql ClickHouse

SELECT
	r.ID,
	r.Data
FROM
	TrimTestTable r
ORDER BY
	r.ID

