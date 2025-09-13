BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

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

BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

SELECT
	t1.Id,
	t1.ClassProp,
	t1.Interface
FROM
	SomeTable t1
LIMIT 2

