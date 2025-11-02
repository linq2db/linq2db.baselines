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

-- ClickHouse.Octonica ClickHouse

SELECT
	r.ID,
	r.Data
FROM
	TrimTestTable r
ORDER BY
	r.ID

-- ClickHouse.Octonica ClickHouse

SELECT
	r.ID,
	r.Data
FROM
	TrimTestTable r
ORDER BY
	r.ID

