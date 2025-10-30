-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @value Int16
SET     @value = 1

SELECT
	t."Value"
FROM
	"NullableBoolClass" t
WHERE
	t."Value" = :value

-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @value Int16
SET     @value = 1

SELECT
	t."Value"
FROM
	"NullableBoolClass" t
WHERE
	t."Value" = :value

-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @value Int16
SET     @value = 1

SELECT
	t."Value"
FROM
	"NullableBoolClass" t
WHERE
	t."Value" <> :value OR t."Value" IS NULL

-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @value Int16
SET     @value = 1

SELECT
	t."Value"
FROM
	"NullableBoolClass" t
WHERE
	t."Value" <> :value

