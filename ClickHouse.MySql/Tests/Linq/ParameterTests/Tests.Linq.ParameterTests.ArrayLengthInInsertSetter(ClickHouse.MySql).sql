-- ClickHouse.MySql ClickHouse
INSERT INTO ArrayLengthTable
(
	Id,
	Value
)
VALUES
(
	1,
	3
)

-- ClickHouse.MySql ClickHouse
SELECT
	t1.Id,
	t1.Value
FROM
	ArrayLengthTable t1
LIMIT 2

