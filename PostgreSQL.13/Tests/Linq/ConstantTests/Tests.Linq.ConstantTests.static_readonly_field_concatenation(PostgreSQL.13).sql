-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	e."Id",
	e."GuidValue",
	e."GuidNullableValue",
	e."StringValue"
FROM
	"TestConstantsData" e
WHERE
	e."StringValue" || '1' = 'StrValue1'

-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	t1."Id",
	t1."GuidValue",
	t1."GuidNullableValue",
	t1."StringValue"
FROM
	"TestConstantsData" t1

