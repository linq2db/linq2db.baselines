-- Oracle.11.Managed Oracle11
DECLARE @value Int16
SET     @value = 1

SELECT
	t."Value"
FROM
	"NullableBoolClass" t
WHERE
	t."Value" = :value

-- Oracle.11.Managed Oracle11
DECLARE @value Int16
SET     @value = 1

SELECT
	t."Value"
FROM
	"NullableBoolClass" t
WHERE
	t."Value" = :value

-- Oracle.11.Managed Oracle11
DECLARE @value Int16
SET     @value = 1

SELECT
	t."Value"
FROM
	"NullableBoolClass" t
WHERE
	t."Value" <> :value OR t."Value" IS NULL

-- Oracle.11.Managed Oracle11
DECLARE @value Int16
SET     @value = 1

SELECT
	t."Value"
FROM
	"NullableBoolClass" t
WHERE
	t."Value" <> :value

