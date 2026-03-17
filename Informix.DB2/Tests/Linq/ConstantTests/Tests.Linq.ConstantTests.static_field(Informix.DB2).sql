-- Informix.DB2 Informix
DECLARE @GuidNonReadonly Char(36) -- StringFixedLength
SET     @GuidNonReadonly = 'bc7b663d-0fde-4327-8f92-5d8cc3a11d11'

SELECT
	e.Id,
	e.GuidValue,
	e.GuidNullableValue,
	e.StringValue
FROM
	TestConstantsData e
WHERE
	e.GuidValue = @GuidNonReadonly AND e.GuidNullableValue = @GuidNonReadonly

-- Informix.DB2 Informix

SELECT
	t1.Id,
	t1.GuidValue,
	t1.GuidNullableValue,
	t1.StringValue
FROM
	TestConstantsData t1

