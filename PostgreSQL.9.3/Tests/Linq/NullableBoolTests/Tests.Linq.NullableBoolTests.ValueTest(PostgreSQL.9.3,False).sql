-- PostgreSQL.9.3 PostgreSQL
DECLARE @value Boolean
SET     @value = False

SELECT
	t."Id",
	t."Value"
FROM
	"NullableBoolClass" t
WHERE
	t."Value" = :value

-- PostgreSQL.9.3 PostgreSQL
DECLARE @value Boolean
SET     @value = False

SELECT
	t."Id",
	t."Value"
FROM
	"NullableBoolClass" t
WHERE
	t."Value" = :value

-- PostgreSQL.9.3 PostgreSQL
DECLARE @value Boolean
SET     @value = False

SELECT
	t."Id",
	t."Value"
FROM
	"NullableBoolClass" t
WHERE
	t."Value" <> :value OR t."Value" IS NULL

-- PostgreSQL.9.3 PostgreSQL
DECLARE @value Boolean
SET     @value = False

SELECT
	t."Id",
	t."Value"
FROM
	"NullableBoolClass" t
WHERE
	t."Value" <> :value

