-- DuckDB
SELECT
	Coalesce(t.Code, '') || Coalesce(t.Title, '')
FROM
	PrefixedCodeWithTitle t
LIMIT 2

-- DuckDB
DECLARE $Code VarChar(4) -- AnsiString
SET     $Code = 'x:AT'

SELECT
	CASE
		WHEN $Code IN (
			SELECT
				Coalesce(t.Code, '') || Coalesce(t.Title, '')
			FROM
				PrefixedCodeWithTitle t
		)
			THEN True
		ELSE False
	END

