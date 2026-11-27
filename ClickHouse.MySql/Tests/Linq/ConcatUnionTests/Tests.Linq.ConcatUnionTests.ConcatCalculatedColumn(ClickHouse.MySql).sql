-- ClickHouse.MySql ClickHouse
INSERT INTO CalculatedColumnSetTable
(
	Id,
	FirstName,
	LastName,
	Text
)
VALUES
(
	1,
	'one',
	'two',
	'text'
)

-- ClickHouse.MySql ClickHouse
SELECT
	t1.Id,
	t1.Text,
	concat(Coalesce(t1.FirstName, ''), ' ', Coalesce(t1.LastName, '')) as FullName
FROM
	CalculatedColumnSetTable t1
UNION ALL
SELECT
	t2.Id as Id,
	t2.Text as Text,
	concat(Coalesce(t2.FirstName, ''), ' ', Coalesce(t2.LastName, '')) as FullName
FROM
	CalculatedColumnSetTable t2

