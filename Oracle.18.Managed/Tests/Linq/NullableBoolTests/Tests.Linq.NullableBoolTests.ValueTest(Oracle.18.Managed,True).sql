-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @value Int16
SET     @value = 1

SELECT
	t."Id",
	t."Value"
FROM
	"NullableBoolClass" t
WHERE
	t."Value" = :value

-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @value Int16
SET     @value = 1

SELECT
	t."Id",
	t."Value"
FROM
	"NullableBoolClass" t
WHERE
	t."Value" = :value

-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @value Int16
SET     @value = 1

SELECT
	t."Id",
	t."Value"
FROM
	"NullableBoolClass" t
WHERE
	t."Value" <> :value OR t."Value" IS NULL

-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @value Int16
SET     @value = 1

SELECT
	t."Id",
	t."Value"
FROM
	"NullableBoolClass" t
WHERE
	t."Value" <> :value

