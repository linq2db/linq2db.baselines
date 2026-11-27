-- DuckDB
DECLARE $value VarChar(1) -- AnsiString
SET     $value = '+'

SELECT
	r.Id,
	r."Value"
FROM
	BoolStringConversionTable r
WHERE
	r."Value" = $value
ORDER BY
	r.Id

