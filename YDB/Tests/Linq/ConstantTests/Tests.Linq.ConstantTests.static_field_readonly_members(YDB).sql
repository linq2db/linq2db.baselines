-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $InitOnlyId Int32
SET     $InitOnlyId = 1

SELECT
	e.Id as Id,
	e.GuidValue as GuidValue,
	e.GuidNullableValue as GuidNullableValue,
	e.StringValue as StringValue
FROM
	TestConstantsData e
WHERE
	e.Id = $Id AND e.Id = $InitOnlyId

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.GuidValue as GuidValue,
	t1.GuidNullableValue as GuidNullableValue,
	t1.StringValue as StringValue
FROM
	TestConstantsData t1

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $InitOnlyId Int32
SET     $InitOnlyId = 1

SELECT
	e.Id as Id,
	e.GuidValue as GuidValue,
	e.GuidNullableValue as GuidNullableValue,
	e.StringValue as StringValue
FROM
	TestConstantsData e
WHERE
	e.Id = $Id AND e.Id = $InitOnlyId

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.GuidValue as GuidValue,
	t1.GuidNullableValue as GuidNullableValue,
	t1.StringValue as StringValue
FROM
	TestConstantsData t1

