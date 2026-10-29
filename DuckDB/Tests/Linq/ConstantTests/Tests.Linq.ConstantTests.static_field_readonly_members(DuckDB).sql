-- DuckDB
DECLARE $Id INTEGER -- Int32
SET     $Id = 1
DECLARE $InitOnlyId INTEGER -- Int32
SET     $InitOnlyId = 1

SELECT
	e.Id,
	e.GuidValue,
	e.GuidNullableValue,
	e.StringValue
FROM
	TestConstantsData e
WHERE
	e.Id = $Id AND e.Id = $InitOnlyId

-- DuckDB
SELECT
	t1.Id,
	t1.GuidValue,
	t1.GuidNullableValue,
	t1.StringValue
FROM
	TestConstantsData t1

-- DuckDB
DECLARE $Id INTEGER -- Int32
SET     $Id = 1
DECLARE $InitOnlyId INTEGER -- Int32
SET     $InitOnlyId = 1

SELECT
	e.Id,
	e.GuidValue,
	e.GuidNullableValue,
	e.StringValue
FROM
	TestConstantsData e
WHERE
	e.Id = $Id AND e.Id = $InitOnlyId

-- DuckDB
SELECT
	t1.Id,
	t1.GuidValue,
	t1.GuidNullableValue,
	t1.StringValue
FROM
	TestConstantsData t1

