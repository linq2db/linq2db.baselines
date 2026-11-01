-- Access.Jet.Odbc AccessODBC
SELECT TOP 1
	[r].[Plain] + [r].[Conv]
FROM
	[PlainAndConvertedUnicodeRow] [r]
ORDER BY
	[r].[Id]

-- Access.Jet.Odbc AccessODBC
DECLARE @read NVarChar(6) -- String
SET     @read = 'A-x:n1'

SELECT
	COUNT(*)
FROM
	[PlainAndConvertedUnicodeRow] [r]
WHERE
	([r].[Plain] + [r].[Conv]) = ?

-- Access.Jet.Odbc AccessODBC
DECLARE @read NVarChar(6) -- String
SET     @read = 'A-x:n1'

SELECT
	COUNT(*)
FROM
	[PlainAndConvertedUnicodeRow] [r]
WHERE
	([r].[Plain] + [r].[Conv]) <> ?

-- Access.Jet.Odbc AccessODBC
SELECT
	COUNT(*) > 0
FROM
	[PlainAndConvertedUnicodeRow] [r]
WHERE
	([r].[Plain] + [r].[Conv]) = 'A-x:n1'

-- Access.Jet.Odbc AccessODBC
SELECT
	COUNT(*)
FROM
	[PlainAndConvertedUnicodeRow] [r]
WHERE
	([r].[Plain] + [r].[Conv]) IN ('A-x:n1')

