-- Informix.DB2 Informix
DECLARE @value Char(1) -- StringFixedLength
SET     @value = 't'

SELECT
	t."Value"
FROM
	NullableBoolClass t
WHERE
	t."Value" = @value

-- Informix.DB2 Informix
DECLARE @value Char(1) -- StringFixedLength
SET     @value = 't'

SELECT
	t."Value"
FROM
	NullableBoolClass t
WHERE
	t."Value" = @value

-- Informix.DB2 Informix
DECLARE @value Char(1) -- StringFixedLength
SET     @value = 't'

SELECT
	t."Value"
FROM
	NullableBoolClass t
WHERE
	t."Value" <> @value OR t."Value" IS NULL

-- Informix.DB2 Informix
DECLARE @value Char(1) -- StringFixedLength
SET     @value = 't'

SELECT
	t."Value"
FROM
	NullableBoolClass t
WHERE
	t."Value" <> @value

