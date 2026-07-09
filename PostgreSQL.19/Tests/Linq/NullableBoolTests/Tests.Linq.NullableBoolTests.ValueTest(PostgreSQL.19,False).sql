-- PostgreSQL.19 PostgreSQL13
DECLARE @value Boolean
SET     @value = False

SELECT
	t."Id",
	t."Value"
FROM
	"NullableBoolClass" t
WHERE
	t."Value" = :value

-- PostgreSQL.19 PostgreSQL13
DECLARE @value Boolean
SET     @value = False

SELECT
	t."Id",
	t."Value"
FROM
	"NullableBoolClass" t
WHERE
	t."Value" = :value

-- PostgreSQL.19 PostgreSQL13
DECLARE @value Boolean
SET     @value = False

SELECT
	t."Id",
	t."Value"
FROM
	"NullableBoolClass" t
WHERE
	t."Value" <> :value OR t."Value" IS NULL

-- PostgreSQL.19 PostgreSQL13
DECLARE @value Boolean
SET     @value = False

SELECT
	t."Id",
	t."Value"
FROM
	"NullableBoolClass" t
WHERE
	t."Value" <> :value

