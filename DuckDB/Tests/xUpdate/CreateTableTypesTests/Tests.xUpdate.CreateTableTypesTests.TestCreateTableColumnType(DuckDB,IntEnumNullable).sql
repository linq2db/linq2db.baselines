-- DuckDB
DECLARE $Id INTEGER -- Int32
SET     $Id = 1
DECLARE $IntEnumNullable INTEGER -- Int32
SET     $IntEnumNullable = NULL

INSERT INTO CreateTableTypes
(
	Id,
	IntEnumNullable
)
VALUES
(
	$Id,
	$IntEnumNullable
)

-- DuckDB
DECLARE $Id INTEGER -- Int32
SET     $Id = 2
DECLARE $IntEnumNullable INTEGER -- Int32
SET     $IntEnumNullable = 60

INSERT INTO CreateTableTypes
(
	Id,
	IntEnumNullable
)
VALUES
(
	$Id,
	$IntEnumNullable
)

-- DuckDB
SELECT
	t1.Id,
	t1.IntEnumNullable
FROM
	CreateTableTypes t1
ORDER BY
	t1.Id

