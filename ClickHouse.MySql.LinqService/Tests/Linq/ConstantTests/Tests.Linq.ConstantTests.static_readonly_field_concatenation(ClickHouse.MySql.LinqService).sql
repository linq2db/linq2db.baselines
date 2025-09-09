BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

SELECT
	e.Id,
	e.GuidValue,
	e.GuidNullableValue,
	e.StringValue
FROM
	TestConstantsData e
WHERE
	concat(e.StringValue, '1') = 'StrValue1'

BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

SELECT
	t1.Id,
	t1.GuidValue,
	t1.GuidNullableValue,
	t1.StringValue
FROM
	TestConstantsData t1

