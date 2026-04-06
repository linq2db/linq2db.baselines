-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 1
DECLARE $Double NVarChar(1) -- String
SET     $Double = '0'

INSERT INTO CreateTableTypes
(
	Id,
	"Double"
)
VALUES
(
	CAST($Id AS INTEGER),
	CAST($Double AS DOUBLE)
)

-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 2
DECLARE $Double NVarChar(18) -- String
SET     $Double = '3.1400000000000001'

INSERT INTO CreateTableTypes
(
	Id,
	"Double"
)
VALUES
(
	CAST($Id AS INTEGER),
	CAST($Double AS DOUBLE)
)

-- DuckDB

SELECT
	t1.Id,
	t1."Double"
FROM
	CreateTableTypes t1
ORDER BY
	t1.Id

