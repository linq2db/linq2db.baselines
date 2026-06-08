-- ClickHouse.Driver ClickHouse

INSERT INTO DateOnlyTable
(
	Date
)
VALUES
(toDate32('2021-01-01'))

-- ClickHouse.Driver ClickHouse

SELECT
	t1.Id,
	t1.Date
FROM
	DateOnlyTable t1
LIMIT 2

