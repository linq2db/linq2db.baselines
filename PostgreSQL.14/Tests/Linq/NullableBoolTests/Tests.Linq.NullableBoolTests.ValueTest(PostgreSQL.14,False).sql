-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
DECLARE @value Boolean
SET     @value = False

SELECT
	t."Id",
	t."Value"
FROM
	"NullableBoolClass" t
WHERE
	t."Value" = :value

-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
DECLARE @value Boolean
SET     @value = False

SELECT
	t."Id",
	t."Value"
FROM
	"NullableBoolClass" t
WHERE
	t."Value" = :value

-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
DECLARE @value Boolean
SET     @value = False

SELECT
	t."Id",
	t."Value"
FROM
	"NullableBoolClass" t
WHERE
	t."Value" <> :value OR t."Value" IS NULL

-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
DECLARE @value Boolean
SET     @value = False

SELECT
	t."Id",
	t."Value"
FROM
	"NullableBoolClass" t
WHERE
	t."Value" <> :value

