BeforeExecute
-- ClickHouse.Client ClickHouse

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

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t1.ClassProp,
	t1.Interface
FROM
	SomeTable t1
LIMIT 2

