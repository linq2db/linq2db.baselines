-- Informix.DB2 Informix
SELECT
	COUNT(*)
FROM
	PrefixedCodeWithTitleTable t
WHERE
	(Nvl(t.Code, '') || Nvl(t.Title, '')) LIKE 'x:AT'

-- Informix.DB2 Informix
DECLARE @bound VarChar(4) -- String
SET     @bound = 'x:AT'

SELECT
	COUNT(*)
FROM
	PrefixedCodeWithTitleTable t
WHERE
	(Nvl(t.Code, '') || Nvl(t.Title, '')) = @bound

-- Informix.DB2 Informix
DECLARE @bound VarChar(4) -- String
SET     @bound = 'x:AT'

SELECT
	COUNT(*)
FROM
	PrefixedCodeWithTitleTable t
WHERE
	(Nvl(t.Code, '') || Nvl(t.Title, '')) = @bound

