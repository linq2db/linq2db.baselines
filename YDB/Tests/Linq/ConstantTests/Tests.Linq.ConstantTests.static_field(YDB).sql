-- YDB Ydb
DECLARE $GuidNonReadonly Uuid -- Guid
SET     $GuidNonReadonly = Uuid('bc7b663d-0fde-4327-8f92-5d8cc3a11d11')

SELECT
	e.Id as Id,
	e.GuidValue as GuidValue,
	e.GuidNullableValue as GuidNullableValue,
	e.StringValue as StringValue
FROM
	TestConstantsData e
WHERE
	e.GuidValue = $GuidNonReadonly AND e.GuidNullableValue = $GuidNonReadonly

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.GuidValue as GuidValue,
	t1.GuidNullableValue as GuidNullableValue,
	t1.StringValue as StringValue
FROM
	TestConstantsData t1

