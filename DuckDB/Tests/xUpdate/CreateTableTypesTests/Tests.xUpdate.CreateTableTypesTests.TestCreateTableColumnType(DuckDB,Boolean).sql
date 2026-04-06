-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 1
DECLARE $Boolean  -- Boolean
SET     $Boolean = False

INSERT INTO CreateTableTypes
(
	Id,
	"Boolean"
)
VALUES
(
	CAST($Id AS INTEGER),
	CAST($Boolean AS BOOLEAN)
)

-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 2
DECLARE $Boolean  -- Boolean
SET     $Boolean = True

INSERT INTO CreateTableTypes
(
	Id,
	"Boolean"
)
VALUES
(
	CAST($Id AS INTEGER),
	CAST($Boolean AS BOOLEAN)
)

-- DuckDB

SELECT
	t1.Id,
	t1."Boolean"
FROM
	CreateTableTypes t1
ORDER BY
	t1.Id

