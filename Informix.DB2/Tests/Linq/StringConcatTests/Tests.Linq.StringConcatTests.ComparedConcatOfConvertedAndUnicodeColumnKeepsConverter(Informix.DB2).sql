-- Informix.DB2 Informix
DECLARE @bound VarChar(5) -- String
SET     @bound = 'x:c1T'

SELECT
	COUNT(*)
FROM
	ConvertedConcatTitleRow p
WHERE
	(p.Conv || p.Title) = @bound

