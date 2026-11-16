-- Access.Ace.Odbc AccessODBC
DECLARE @Value VarChar(6) -- AnsiString
SET     @Value = 'Female'

SELECT
	[r].[Id]
FROM
	[ConvertedGenderRow] [r]
WHERE
	[r].[Gender] = ?

-- Access.Ace.Odbc AccessODBC
SELECT
	[t1].[Id],
	[t1].[Gender]
FROM
	[ConvertedGenderRow] [t1]

