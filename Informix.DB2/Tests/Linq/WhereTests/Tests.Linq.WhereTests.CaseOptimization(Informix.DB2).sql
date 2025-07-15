BeforeExecute
-- Informix.DB2 Informix

SELECT
	x.Id,
	x.StringValue
FROM
	WhereWithString x
WHERE
	x.StringValue LIKE '%Str%' ESCAPE '~' AND x.StringValue IS NOT NULL

