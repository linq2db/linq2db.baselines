BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @p Varchar2(9) -- String
SET     @p = 'StrValue1'

SELECT
	e."Id",
	e."GuidValue",
	e."GuidNullableValue",
	e."StringValue"
FROM
	"TestConstantsData" e
WHERE
	e."StringValue" || '1' = :p

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1."GuidValue",
	t1."GuidNullableValue",
	t1."StringValue"
FROM
	"TestConstantsData" t1

