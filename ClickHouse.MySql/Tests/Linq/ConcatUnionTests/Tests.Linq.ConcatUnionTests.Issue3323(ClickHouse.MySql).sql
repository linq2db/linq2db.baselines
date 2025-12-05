-- ClickHouse.MySql ClickHouse

INSERT INTO Issue3323Table
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
	concat(t1.FirstName, ' ', t1.LastName) as FullName
FROM
	Issue3323Table t1
UNION ALL
SELECT
	t2.Id as Id,
	t2.Text as Text,
	concat(t2.FirstName, ' ', t2.LastName) as FullName
FROM
	Issue3323Table t2

