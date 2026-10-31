-- Access.Jet.OleDb AccessOleDb
DECLARE @bound VarChar(5) -- AnsiString
SET     @bound = 'x:c1T'

SELECT
	COUNT(*)
FROM
	[ConvertedConcatTitleRow] [p]
WHERE
	([p].[Conv] + [p].[Title]) = @bound

