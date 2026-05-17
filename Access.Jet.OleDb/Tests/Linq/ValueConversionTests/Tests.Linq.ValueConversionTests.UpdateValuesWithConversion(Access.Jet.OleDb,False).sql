-- Access.Jet.OleDb AccessOleDb
DECLARE @Test1 Char -- AnsiStringFixedLength
SET     @Test1 = NULL

UPDATE
	[TableWithConverterValue] [x]
SET
	[x].[Test1] = @Test1
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

-- Access.Jet.OleDb AccessOleDb
DECLARE @Test1 Char(1) -- AnsiStringFixedLength
SET     @Test1 = 'X'

UPDATE
	[TableWithConverterValue] [x]
SET
	[x].[Test1] = @Test1
WHERE
	[x].[Id] = 2

-- Access.Jet.OleDb AccessOleDb

SELECT TOP 2
	[x].[Id],
	[x].[NoConversion],
	[x].[Test1],
	[x].[Test2]
FROM
	[TableWithConverterValue] [x]
WHERE
	[x].[Id] = 2

-- Access.Jet.OleDb AccessOleDb
DECLARE @Test1 Char(1) -- AnsiStringFixedLength
SET     @Test1 = 'X'

SELECT
	[x].[Id],
	[x].[NoConversion],
	[x].[Test1],
	[x].[Test2]
FROM
	[TableWithConverterValue] [x]
WHERE
	[x].[Test1] = @Test1

