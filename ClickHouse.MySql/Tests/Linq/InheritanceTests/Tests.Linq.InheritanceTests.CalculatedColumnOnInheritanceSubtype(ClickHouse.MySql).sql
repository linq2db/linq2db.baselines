-- ClickHouse.MySql ClickHouse

INSERT INTO CalcSubtypeTable
(
	Id,
	Type,
	Name_First,
	Name_Second
)
VALUES
(
	1,
	1,
	'John',
	'Doe'
)

-- ClickHouse.MySql ClickHouse

SELECT
	t1.Id,
	t1.Type,
	t1.Name_First,
	t1.Name_Second,
	concat(Coalesce(t1.Name_First, ''), ' ', Coalesce(t1.Name_Second, ''))
FROM
	CalcSubtypeTable t1
LIMIT 2

