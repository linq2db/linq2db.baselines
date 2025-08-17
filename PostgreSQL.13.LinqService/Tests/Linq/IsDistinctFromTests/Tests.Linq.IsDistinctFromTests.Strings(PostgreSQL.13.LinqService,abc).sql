BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL (asynchronously)
DECLARE @value Text(3) -- String
SET     @value = 'abc'

SELECT
	COUNT(*)
FROM
	"Src" s
WHERE
	s."String" IS DISTINCT FROM :value

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL (asynchronously)
DECLARE @value Text(3) -- String
SET     @value = 'abc'

SELECT
	COUNT(*)
FROM
	"Src" s
WHERE
	s."NullableString" IS DISTINCT FROM :value

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL (asynchronously)
DECLARE @value Text(3) -- String
SET     @value = 'abc'

SELECT
	COUNT(*)
FROM
	"Src" s
WHERE
	s."String" IS NOT DISTINCT FROM :value

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL (asynchronously)
DECLARE @value Text(3) -- String
SET     @value = 'abc'

SELECT
	COUNT(*)
FROM
	"Src" s
WHERE
	s."NullableString" IS NOT DISTINCT FROM :value

