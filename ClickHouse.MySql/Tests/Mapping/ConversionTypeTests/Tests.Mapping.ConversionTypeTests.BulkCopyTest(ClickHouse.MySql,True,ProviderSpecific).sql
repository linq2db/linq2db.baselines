-- ClickHouse.MySql ClickHouse

INSERT INTO TrimTestTable
(
	ID,
	Data
)
VALUES
(1,'***OOO***')

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

