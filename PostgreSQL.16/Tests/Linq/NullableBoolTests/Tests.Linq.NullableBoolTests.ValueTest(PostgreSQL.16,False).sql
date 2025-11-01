-- PostgreSQL.16 PostgreSQL.15 PostgreSQL
DECLARE @value Boolean
SET     @value = False

SELECT
	t."Value"
FROM
	"NullableBoolClass" t
WHERE
	t."Value" = :value

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL
DECLARE @value Boolean
SET     @value = False

SELECT
	t."Value"
FROM
	"NullableBoolClass" t
WHERE
	t."Value" = :value

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL
DECLARE @value Boolean
SET     @value = False

SELECT
	t."Value"
FROM
	"NullableBoolClass" t
WHERE
	t."Value" <> :value OR t."Value" IS NULL

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL
DECLARE @value Boolean
SET     @value = False

SELECT
	t."Value"
FROM
	"NullableBoolClass" t
WHERE
	t."Value" <> :value

