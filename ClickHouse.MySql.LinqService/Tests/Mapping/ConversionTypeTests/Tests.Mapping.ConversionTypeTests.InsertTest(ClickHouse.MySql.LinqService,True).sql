BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

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
-- ClickHouse.MySql ClickHouse (asynchronously)

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
-- ClickHouse.MySql ClickHouse (asynchronously)

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
-- ClickHouse.MySql ClickHouse (asynchronously)

SELECT
	r.ID,
	r.Data
FROM
	TrimTestTable r
ORDER BY
	r.ID

BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

SELECT
	r.ID,
	r.Data
FROM
	TrimTestTable r
ORDER BY
	r.ID

