BeforeExecute
-- ClickHouse.Driver ClickHouse

INSERT INTO Issue3323Table
(
	Id,
	FistName,
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

BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	t1.Id,
	t1.Text,
	concat(t1.FistName, ' ', t1.LastName) as FullName
FROM
	Issue3323Table t1
UNION ALL
SELECT
	t2.Id as Id,
	t2.Text as Text,
	concat(t2.FistName, ' ', t2.LastName) as FullName
FROM
	Issue3323Table t2

