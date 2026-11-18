-- PostgreSQL.12 PostgreSQL12
DECLARE @value Boolean
SET     @value = False

SELECT
	t."Id",
	t."Value"
FROM
	"NullableBoolClass" t
WHERE
	t."Value" = :value

-- PostgreSQL.12 PostgreSQL12
DECLARE @value Boolean
SET     @value = False

SELECT
	t."Id",
	t."Value"
FROM
	"NullableBoolClass" t
WHERE
	t."Value" = :value

-- PostgreSQL.12 PostgreSQL12
DECLARE @value Boolean
SET     @value = False

SELECT
	t."Id",
	t."Value"
FROM
	"NullableBoolClass" t
WHERE
	t."Value" <> :value OR t."Value" IS NULL

-- PostgreSQL.12 PostgreSQL12
DECLARE @value Boolean
SET     @value = False

SELECT
	t."Id",
	t."Value"
FROM
	"NullableBoolClass" t
WHERE
	t."Value" <> :value

