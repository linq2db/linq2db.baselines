-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @value Int16
SET     @value = 0

SELECT
	t."Id",
	t."Value"
FROM
	"NullableBoolClass" t
WHERE
	t."Value" = :value

-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @value Int16
SET     @value = 0

SELECT
	t."Id",
	t."Value"
FROM
	"NullableBoolClass" t
WHERE
	t."Value" = :value

-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @value Int16
SET     @value = 0

SELECT
	t."Id",
	t."Value"
FROM
	"NullableBoolClass" t
WHERE
	t."Value" <> :value OR t."Value" IS NULL

-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @value Int16
SET     @value = 0

SELECT
	t."Id",
	t."Value"
FROM
	"NullableBoolClass" t
WHERE
	t."Value" <> :value

