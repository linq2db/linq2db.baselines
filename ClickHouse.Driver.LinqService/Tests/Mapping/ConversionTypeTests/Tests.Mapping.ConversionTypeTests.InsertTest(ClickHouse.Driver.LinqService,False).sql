BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

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
-- ClickHouse.Driver ClickHouse (asynchronously)

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
-- ClickHouse.Driver ClickHouse (asynchronously)

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
-- ClickHouse.Driver ClickHouse (asynchronously)

SELECT
	r.ID,
	r.Data
FROM
	TrimTestTable r
ORDER BY
	r.ID

BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

SELECT
	r.ID,
	r.Data
FROM
	TrimTestTable r
ORDER BY
	r.ID

