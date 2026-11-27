-- Informix.DB2 Informix
DECLARE @value VarChar(1) -- String
SET     @value = '+'

SELECT
	r.Id,
	r."Value"
FROM
	BoolStringConversionTable r
WHERE
	r."Value" = @value::VarChar(1)
ORDER BY
	r.Id

