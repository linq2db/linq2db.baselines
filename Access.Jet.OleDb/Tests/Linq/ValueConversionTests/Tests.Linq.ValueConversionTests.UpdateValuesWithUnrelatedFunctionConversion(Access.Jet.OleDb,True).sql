-- Access.Jet.OleDb AccessOleDb

UPDATE
	[TableWithConverterValue] [x]
SET
	[x].[Test1] = IIF(([x].[Id] > 0), 'X', NULL)
WHERE
	[x].[Id] = 1

-- Access.Jet.OleDb AccessOleDb

SELECT TOP 2
	[x].[Id],
	[x].[NoConversion],
	[x].[Test1],
	[x].[Test2]
FROM
	[TableWithConverterValue] [x]
WHERE
	[x].[Id] = 1

