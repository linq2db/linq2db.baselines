BeforeExecute
-- Informix.DB2 Informix

SELECT
	x.Id,
	x.StringValue
FROM
	WhereWithString x
WHERE
	CASE
		WHEN x.StringValue LIKE '%Str%' ESCAPE '~' THEN 't'::BOOLEAN
		WHEN NOT x.StringValue LIKE '%Str%' ESCAPE '~' THEN 'f'::BOOLEAN
		ELSE NULL
	END = 't'::BOOLEAN AND
	x.StringValue IS NOT NULL

