-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $String Text -- String
SET     $String = NULL

INSERT INTO CreateTableTypes
(
	Id,
	String
)
VALUES
(
	$Id,
	$String
)

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 2
DECLARE $String Text(9) -- String
SET     $String = 'test 10 n'u

INSERT INTO CreateTableTypes
(
	Id,
	String
)
VALUES
(
	$Id,
	$String
)

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.String as String
FROM
	CreateTableTypes t1
ORDER BY
	t1.Id

