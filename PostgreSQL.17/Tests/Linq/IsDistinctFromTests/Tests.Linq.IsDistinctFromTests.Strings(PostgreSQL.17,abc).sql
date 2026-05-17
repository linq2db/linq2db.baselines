-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @value Text(3) -- String
SET     @value = 'abc'

SELECT
	COUNT(*)
FROM
	"Src" s
WHERE
	s."String" IS DISTINCT FROM :value

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @value Text(3) -- String
SET     @value = 'abc'

SELECT
	COUNT(*)
FROM
	"Src" s
WHERE
	s."NullableString" IS DISTINCT FROM :value

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @value Text(3) -- String
SET     @value = 'abc'

SELECT
	COUNT(*)
FROM
	"Src" s
WHERE
	s."String" IS NOT DISTINCT FROM :value

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @value Text(3) -- String
SET     @value = 'abc'

SELECT
	COUNT(*)
FROM
	"Src" s
WHERE
	s."NullableString" IS NOT DISTINCT FROM :value

