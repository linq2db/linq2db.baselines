-- ClickHouse.Octonica ClickHouse

INSERT INTO SomeTable
(
	Id,
	ClassProp,
	Interface
)
VALUES
(
	1,
	true,
	false
)

-- ClickHouse.Octonica ClickHouse

SELECT
	t1.Id,
	t1.ClassProp,
	t1.Interface
FROM
	SomeTable t1
LIMIT 2

