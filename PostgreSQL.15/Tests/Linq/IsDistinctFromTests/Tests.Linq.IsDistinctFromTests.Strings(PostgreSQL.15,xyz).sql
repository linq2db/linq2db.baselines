BeforeExecute
-- PostgreSQL.15 PostgreSQL
DECLARE @value Text(3) -- String
SET     @value = 'xyz'

SELECT
	COUNT(*)
FROM
	"Src" s
WHERE
	s."String" IS DISTINCT FROM :value

BeforeExecute
-- PostgreSQL.15 PostgreSQL
DECLARE @value Text(3) -- String
SET     @value = 'xyz'

SELECT
	COUNT(*)
FROM
	"Src" s
WHERE
	s."NullableString" IS DISTINCT FROM :value

BeforeExecute
-- PostgreSQL.15 PostgreSQL
DECLARE @value Text(3) -- String
SET     @value = 'xyz'

SELECT
	COUNT(*)
FROM
	"Src" s
WHERE
	s."String" IS NOT DISTINCT FROM :value

BeforeExecute
-- PostgreSQL.15 PostgreSQL
DECLARE @value Text(3) -- String
SET     @value = 'xyz'

SELECT
	COUNT(*)
FROM
	"Src" s
WHERE
	s."NullableString" IS NOT DISTINCT FROM :value

