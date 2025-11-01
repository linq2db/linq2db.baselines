-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @p Integer -- Int32
SET     @p = 2

SELECT
	e."Id",
	e."GuidValue",
	e."GuidNullableValue",
	e."StringValue"
FROM
	"TestConstantsData" e
WHERE
	e."Id" = :Id AND e."Id" = :p

-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	t1."Id",
	t1."GuidValue",
	t1."GuidNullableValue",
	t1."StringValue"
FROM
	"TestConstantsData" t1

-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @p Integer -- Int32
SET     @p = 2

SELECT
	e."Id",
	e."GuidValue",
	e."GuidNullableValue",
	e."StringValue"
FROM
	"TestConstantsData" e
WHERE
	e."Id" = :Id AND e."Id" = :p

-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	t1."Id",
	t1."GuidValue",
	t1."GuidNullableValue",
	t1."StringValue"
FROM
	"TestConstantsData" t1

