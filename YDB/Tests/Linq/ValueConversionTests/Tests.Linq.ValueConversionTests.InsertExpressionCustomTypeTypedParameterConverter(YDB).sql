-- YDB Ydb
DECLARE Field1 Text -- String
SET     Field1 = NULL

INSERT INTO CustomFieldRecord
(
	Id,
	Field1
)
VALUES
(
	1,
	$Field1
)

-- YDB Ydb
DECLARE Field1 Text -- String
SET     Field1 = NULL

INSERT INTO CustomFieldRecord
(
	Id,
	Field1
)
VALUES
(
	2,
	$Field1
)

-- YDB Ydb
DECLARE Field1 Text(4) -- String
SET     Field1 = 'test'u

INSERT INTO CustomFieldRecord
(
	Id,
	Field1
)
VALUES
(
	3,
	$Field1
)

-- YDB Ydb
SELECT
	t1.Id as Id,
	t1.Field1 as Field1
FROM
	CustomFieldRecord t1
ORDER BY
	t1.Id

