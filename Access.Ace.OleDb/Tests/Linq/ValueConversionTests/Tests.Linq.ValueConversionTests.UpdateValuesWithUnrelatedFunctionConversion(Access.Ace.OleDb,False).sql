-- Access.Ace.OleDb AccessOleDb
DECLARE @yes VarWChar(1) -- String
SET     @yes = 'X'
DECLARE @no VarWChar -- String
SET     @no = NULL

UPDATE
	[TableWithConverterValue] [x]
SET
	[x].[Test1] = IIF(([x].[Id] > 0), @yes, @no)
WHERE
	[x].[Id] = 1

-- Access.Ace.OleDb AccessOleDb

SELECT TOP 2
	[x].[Id],
	[x].[NoConversion],
	[x].[Test1],
	[x].[Test2]
FROM
	[TableWithConverterValue] [x]
WHERE
	[x].[Id] = 1

