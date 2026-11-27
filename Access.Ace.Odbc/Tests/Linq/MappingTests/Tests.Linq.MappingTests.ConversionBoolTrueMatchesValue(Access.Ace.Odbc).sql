-- Access.Ace.Odbc AccessODBC
DECLARE @value VarChar(1) -- AnsiString
SET     @value = '+'

SELECT
	[r].[Id],
	[r].[Value]
FROM
	[BoolStringConversionTable] [r]
WHERE
	[r].[Value] = ?
ORDER BY
	[r].[Id]

