-- Access.Jet.Odbc AccessODBC
DECLARE @Value VarChar(6) -- AnsiString
SET     @Value = 'Female'

SELECT
	[r].[Id]
FROM
	[ConvertedGenderRow] [r]
WHERE
	[r].[Gender] = ?

-- Access.Jet.Odbc AccessODBC
SELECT
	[t1].[Id],
	[t1].[Gender]
FROM
	[ConvertedGenderRow] [t1]

