-- Access.Ace.Odbc AccessODBC
DECLARE @false_value Char -- AnsiStringFixedLength
SET     @false_value = NULL
DECLARE @yes Char -- AnsiStringFixedLength
SET     @yes = NULL
DECLARE @no Char -- AnsiStringFixedLength
SET     @no = NULL

UPDATE
	[TableWithConverterValue] [x]
SET
	[x].[Test1] = IIF([x].[Test2] = ? OR [x].[Test2] IS NULL, ?, ?)
WHERE
	[x].[Id] = 1

-- Access.Ace.Odbc AccessODBC

SELECT TOP 2
	[x].[Id],
	[x].[NoConversion],
	[x].[Test1],
	[x].[Test2]
FROM
	[TableWithConverterValue] [x]
WHERE
	[x].[Id] = 1

-- Access.Ace.Odbc AccessODBC

SELECT TOP 2
	[x].[Id],
	[x].[NoConversion],
	[x].[Test1],
	[x].[Test2]
FROM
	[TableWithConverterValue] [x]
WHERE
	[x].[Id] = 1

