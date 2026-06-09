-- YDB Ydb

SELECT
	e.Id as Id,
	e.GuidValue as GuidValue,
	e.GuidNullableValue as GuidNullableValue,
	e.StringValue as StringValue
FROM
	TestConstantsData e
WHERE
	(Coalesce(e.StringValue, ''u) || '1'u) = 'StrValue1'u

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.GuidValue as GuidValue,
	t1.GuidNullableValue as GuidNullableValue,
	t1.StringValue as StringValue
FROM
	TestConstantsData t1

