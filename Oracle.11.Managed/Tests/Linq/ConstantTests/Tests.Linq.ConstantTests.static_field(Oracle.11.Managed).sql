-- Oracle.11.Managed Oracle11
DECLARE @GuidNonReadonly Raw(16) -- Binary
SET     @GuidNonReadonly = HEXTORAW('3D667BBCDE0F27438F925D8CC3A11D11')

SELECT
	e."Id",
	e."GuidValue",
	e."GuidNullableValue",
	e."StringValue"
FROM
	"TestConstantsData" e
WHERE
	e."GuidValue" = :GuidNonReadonly AND e."GuidNullableValue" = :GuidNonReadonly

-- Oracle.11.Managed Oracle11

SELECT
	t1."Id",
	t1."GuidValue",
	t1."GuidNullableValue",
	t1."StringValue"
FROM
	"TestConstantsData" t1

