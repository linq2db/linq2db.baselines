-- Access.LibRed.Accdb Access.LibRed AccessLibRed
UPDATE
	[TableWithConverterValue] [x]
SET
	[x].[Test1] = IIF(([x].[Id] > 0), 'X', NULL)
WHERE
	[x].[Id] = 1

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT TOP 2
	[x].[Id],
	[x].[NoConversion],
	[x].[Test1],
	[x].[Test2]
FROM
	[TableWithConverterValue] [x]
WHERE
	[x].[Id] = 1

