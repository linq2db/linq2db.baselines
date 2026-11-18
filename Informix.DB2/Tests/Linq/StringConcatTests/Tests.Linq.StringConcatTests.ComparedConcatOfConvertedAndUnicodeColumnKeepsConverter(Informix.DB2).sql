-- Informix.DB2 Informix
DECLARE @bound VarChar(5) -- String
SET     @bound = 'x:c1T'

SELECT
	COUNT(*)
FROM
	ConvertedConcatTitleRow p
WHERE
	(p.Conv || p.Title) = @bound

-- Informix.DB2 Informix
DECLARE @bound VarChar(5) -- String
SET     @bound = 'x:c1T'

SELECT
	COUNT(*)
FROM
	ConvertedConcatTitleRow p
WHERE
	@bound = (p.Conv || p.Title)

-- Informix.DB2 Informix
SELECT
	COUNT(*)
FROM
	ConvertedConcatTitleRow p
WHERE
	(p.Conv || p.Title) IN ('x:c1T')

