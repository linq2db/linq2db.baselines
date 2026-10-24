-- PostgreSQL.18 PostgreSQL12
DECLARE @value Boolean
SET     @value = True

SELECT
	t."Id",
	t."Value"
FROM
	"NullableBoolClass" t
WHERE
	t."Value" = :value

-- PostgreSQL.18 PostgreSQL12
DECLARE @value Boolean
SET     @value = True

SELECT
	t."Id",
	t."Value"
FROM
	"NullableBoolClass" t
WHERE
	t."Value" = :value

-- PostgreSQL.18 PostgreSQL12
DECLARE @value Boolean
SET     @value = True

SELECT
	t."Id",
	t."Value"
FROM
	"NullableBoolClass" t
WHERE
	t."Value" <> :value OR t."Value" IS NULL

-- PostgreSQL.18 PostgreSQL12
DECLARE @value Boolean
SET     @value = True

SELECT
	t."Id",
	t."Value"
FROM
	"NullableBoolClass" t
WHERE
	t."Value" <> :value

