-- DuckDB
DECLARE $Id INTEGER -- Int32
SET     $Id = 1
DECLARE $BooleanNullable BOOLEAN -- Boolean
SET     $BooleanNullable = NULL

INSERT INTO CreateTableTypes
(
	Id,
	BooleanNullable
)
VALUES
(
	$Id,
	$BooleanNullable
)

-- DuckDB
DECLARE $Id INTEGER -- Int32
SET     $Id = 2
DECLARE $BooleanNullable BOOLEAN -- Boolean
SET     $BooleanNullable = True

INSERT INTO CreateTableTypes
(
	Id,
	BooleanNullable
)
VALUES
(
	$Id,
	$BooleanNullable
)

-- DuckDB
SELECT
	t1.Id,
	t1.BooleanNullable
FROM
	CreateTableTypes t1
ORDER BY
	t1.Id

