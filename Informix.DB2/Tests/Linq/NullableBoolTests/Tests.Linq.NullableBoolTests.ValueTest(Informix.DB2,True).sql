BeforeExecute
-- Informix.DB2 Informix
DECLARE @value Char(1) -- StringFixedLength
SET     @value = 't'

SELECT
	t.Id,
	t."Value"
FROM
	NullableBoolClass t
WHERE
	t."Value" = @value

BeforeExecute
-- Informix.DB2 Informix
DECLARE @value Char(1) -- StringFixedLength
SET     @value = 't'

SELECT
	t.Id,
	t."Value"
FROM
	NullableBoolClass t
WHERE
	t."Value" = @value

BeforeExecute
-- Informix.DB2 Informix
DECLARE @value Char(1) -- StringFixedLength
SET     @value = 't'

SELECT
	t.Id,
	t."Value"
FROM
	NullableBoolClass t
WHERE
	t."Value" <> @value OR t."Value" IS NULL

BeforeExecute
-- Informix.DB2 Informix
DECLARE @value Char(1) -- StringFixedLength
SET     @value = 't'

SELECT
	t.Id,
	t."Value"
FROM
	NullableBoolClass t
WHERE
	t."Value" <> @value

