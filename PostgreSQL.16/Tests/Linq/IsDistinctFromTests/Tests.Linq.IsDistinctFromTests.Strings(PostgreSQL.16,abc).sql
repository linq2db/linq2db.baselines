-- PostgreSQL.16 PostgreSQL.15 PostgreSQL13
DECLARE @value Text(3) -- String
SET     @value = 'abc'

SELECT
	COUNT(*)
FROM
	"Src" s
WHERE
	s."String" IS DISTINCT FROM :value

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL13
DECLARE @value Text(3) -- String
SET     @value = 'abc'

SELECT
	COUNT(*)
FROM
	"Src" s
WHERE
	s."NullableString" IS DISTINCT FROM :value

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL13
DECLARE @value Text(3) -- String
SET     @value = 'abc'

SELECT
	COUNT(*)
FROM
	"Src" s
WHERE
	s."String" IS NOT DISTINCT FROM :value

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL13
DECLARE @value Text(3) -- String
SET     @value = 'abc'

SELECT
	COUNT(*)
FROM
	"Src" s
WHERE
	s."NullableString" IS NOT DISTINCT FROM :value

