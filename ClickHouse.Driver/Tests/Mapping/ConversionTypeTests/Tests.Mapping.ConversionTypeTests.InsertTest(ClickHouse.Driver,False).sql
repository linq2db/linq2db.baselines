-- ClickHouse.Driver ClickHouse

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

-- ClickHouse.Driver ClickHouse

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

-- ClickHouse.Driver ClickHouse

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

-- ClickHouse.Driver ClickHouse

SELECT
	r.ID,
	r.Data
FROM
	TrimTestTable r
ORDER BY
	r.ID

-- ClickHouse.Driver ClickHouse

SELECT
	r.ID,
	r.Data
FROM
	TrimTestTable r
ORDER BY
	r.ID

