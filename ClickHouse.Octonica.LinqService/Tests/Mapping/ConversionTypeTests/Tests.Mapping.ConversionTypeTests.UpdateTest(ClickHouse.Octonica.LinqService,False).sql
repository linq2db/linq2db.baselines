BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

ALTER TABLE
	TrimTestTable
UPDATE
	Data = '***III***'
WHERE
	ID = 3

BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

ALTER TABLE
	TrimTestTable
UPDATE
	Data = '***OOO***'
WHERE
	Data = '***XXX***'

BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

ALTER TABLE
	TrimTestTable
UPDATE
	Data = '***SSS***'
WHERE
	Data = '***HHH***'

BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

SELECT
	r.ID,
	r.Data
FROM
	TrimTestTable r
ORDER BY
	r.ID

BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

SELECT
	r.ID,
	r.Data
FROM
	TrimTestTable r
ORDER BY
	r.ID

