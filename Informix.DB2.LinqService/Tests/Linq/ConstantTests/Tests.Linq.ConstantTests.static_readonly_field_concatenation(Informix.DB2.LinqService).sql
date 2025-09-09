BeforeExecute
-- Informix.DB2 Informix (asynchronously)

SELECT
	e.Id,
	e.GuidValue,
	e.GuidNullableValue,
	e.StringValue
FROM
	TestConstantsData e
WHERE
	e.StringValue || '1' = 'StrValue1'

BeforeExecute
-- Informix.DB2 Informix (asynchronously)

SELECT
	t1.Id,
	t1.GuidValue,
	t1.GuidNullableValue,
	t1.StringValue
FROM
	TestConstantsData t1

