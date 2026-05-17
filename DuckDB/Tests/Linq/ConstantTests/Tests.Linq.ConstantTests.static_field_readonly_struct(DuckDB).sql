-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 1
DECLARE $p  -- Int32
SET     $p = 2

SELECT
	e.Id,
	e.GuidValue,
	e.GuidNullableValue,
	e.StringValue
FROM
	TestConstantsData e
WHERE
	e.Id = $Id AND e.Id = $p

-- DuckDB

SELECT
	t1.Id,
	t1.GuidValue,
	t1.GuidNullableValue,
	t1.StringValue
FROM
	TestConstantsData t1

-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 1
DECLARE $p  -- Int32
SET     $p = 2

SELECT
	e.Id,
	e.GuidValue,
	e.GuidNullableValue,
	e.StringValue
FROM
	TestConstantsData e
WHERE
	e.Id = $Id AND e.Id = $p

-- DuckDB

SELECT
	t1.Id,
	t1.GuidValue,
	t1.GuidNullableValue,
	t1.StringValue
FROM
	TestConstantsData t1

