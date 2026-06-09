-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $StringConverted Text(4) -- String
SET     $StringConverted = 'null'u

INSERT INTO CreateTableTypes
(
	Id,
	StringConverted
)
VALUES
(
	$Id,
	$StringConverted
)

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 2
DECLARE $StringConverted Text(53) -- String
SET     $StringConverted = '[{"Item1":1,"Item2":"one"},{"Item1":2,"Item2":"two"}]'u

INSERT INTO CreateTableTypes
(
	Id,
	StringConverted
)
VALUES
(
	$Id,
	$StringConverted
)

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.StringConverted as StringConverted
FROM
	CreateTableTypes t1
ORDER BY
	t1.Id

