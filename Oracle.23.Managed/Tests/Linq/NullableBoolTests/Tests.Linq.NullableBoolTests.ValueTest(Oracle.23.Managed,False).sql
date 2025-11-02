-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @value Int16
SET     @value = 0

SELECT
	t."Value"
FROM
	"NullableBoolClass" t
WHERE
	t."Value" = :value

-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @value Int16
SET     @value = 0

SELECT
	t."Value"
FROM
	"NullableBoolClass" t
WHERE
	t."Value" = :value

-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @value Int16
SET     @value = 0

SELECT
	t."Value"
FROM
	"NullableBoolClass" t
WHERE
	t."Value" <> :value OR t."Value" IS NULL

-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @value Int16
SET     @value = 0

SELECT
	t."Value"
FROM
	"NullableBoolClass" t
WHERE
	t."Value" <> :value

