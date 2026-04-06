-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 1
DECLARE $IntEnum  -- Int32
SET     $IntEnum = 11

INSERT INTO CreateTableTypes
(
	Id,
	IntEnum
)
VALUES
(
	CAST($Id AS INTEGER),
	CAST($IntEnum AS INTEGER)
)

-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 2
DECLARE $IntEnum  -- Int32
SET     $IntEnum = 60

INSERT INTO CreateTableTypes
(
	Id,
	IntEnum
)
VALUES
(
	CAST($Id AS INTEGER),
	CAST($IntEnum AS INTEGER)
)

-- DuckDB

SELECT
	t1.Id,
	t1.IntEnum
FROM
	CreateTableTypes t1
ORDER BY
	t1.Id

