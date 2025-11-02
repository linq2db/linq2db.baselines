-- ClickHouse.MySql ClickHouse

INSERT INTO SomeTable
(
	ClassProp,
	Interface
)
VALUES
(
	true,
	false
)

-- ClickHouse.MySql ClickHouse

SELECT
	t1.ClassProp,
	t1.Interface
FROM
	SomeTable t1
LIMIT 2

