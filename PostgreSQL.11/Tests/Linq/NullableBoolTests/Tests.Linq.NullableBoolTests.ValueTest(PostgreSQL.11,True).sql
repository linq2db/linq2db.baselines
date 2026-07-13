-- PostgreSQL.11 PostgreSQL
DECLARE @value Boolean
SET     @value = True

SELECT
	t."Id",
	t."Value"
FROM
	"NullableBoolClass" t
WHERE
	t."Value" = :value

-- PostgreSQL.11 PostgreSQL
DECLARE @value Boolean
SET     @value = True

SELECT
	t."Id",
	t."Value"
FROM
	"NullableBoolClass" t
WHERE
	t."Value" = :value

-- PostgreSQL.11 PostgreSQL
DECLARE @value Boolean
SET     @value = True

SELECT
	t."Id",
	t."Value"
FROM
	"NullableBoolClass" t
WHERE
	t."Value" <> :value OR t."Value" IS NULL

-- PostgreSQL.11 PostgreSQL
DECLARE @value Boolean
SET     @value = True

SELECT
	t."Id",
	t."Value"
FROM
	"NullableBoolClass" t
WHERE
	t."Value" <> :value

