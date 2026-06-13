-- YDB Ydb

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

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.ClassProp as ClassProp,
	t1.Interface as Interface
FROM
	SomeTable t1
LIMIT 2

