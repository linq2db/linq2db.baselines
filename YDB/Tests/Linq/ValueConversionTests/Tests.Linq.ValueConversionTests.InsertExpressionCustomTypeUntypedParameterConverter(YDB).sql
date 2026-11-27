-- YDB Ydb
INSERT INTO CustomFieldRecord
(
	Id,
	Field1
)
VALUES
(
	1,
	NULL
)

-- YDB Ydb
INSERT INTO CustomFieldRecord
(
	Id,
	Field1
)
VALUES
(
	2,
	NULL
)

-- YDB Ydb
INSERT INTO CustomFieldRecord
(
	Id,
	Field1
)
VALUES
(
	3,
	'test'u
)

-- YDB Ydb
SELECT
	t1.Id as Id,
	t1.Field1 as Field1
FROM
	CustomFieldRecord t1
ORDER BY
	t1.Id

