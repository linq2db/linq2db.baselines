-- YDB Ydb
DECLARE Id Int32
SET     Id = 1
DECLARE Field1 Text -- String
SET     Field1 = NULL

INSERT INTO CustomFieldRecord
(
	Id,
	Field1
)
VALUES
(
	$Id,
	$Field1
)

-- YDB Ydb
DECLARE Id Int32
SET     Id = 2
DECLARE Field1 Text -- String
SET     Field1 = NULL

INSERT INTO CustomFieldRecord
(
	Id,
	Field1
)
VALUES
(
	$Id,
	$Field1
)

-- YDB Ydb
DECLARE Id Int32
SET     Id = 3
DECLARE Field1 Text(4) -- String
SET     Field1 = 'test'u

INSERT INTO CustomFieldRecord
(
	Id,
	Field1
)
VALUES
(
	$Id,
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

