-- Access.LibRed.Mdb Access.LibRed AccessLibRed
UPDATE
	[TableWithConverterValue] [x]
SET
	[x].[Test1] = NULL
WHERE
	[x].[Id] = 1

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT TOP 2
	[x].[Id],
	[x].[NoConversion],
	[x].[Test1],
	[x].[Test2]
FROM
	[TableWithConverterValue] [x]
WHERE
	[x].[Id] = 1

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
UPDATE
	[TableWithConverterValue] [x]
SET
	[x].[Test1] = 'X'
WHERE
	[x].[Id] = 2

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT TOP 2
	[x].[Id],
	[x].[NoConversion],
	[x].[Test1],
	[x].[Test2]
FROM
	[TableWithConverterValue] [x]
WHERE
	[x].[Id] = 2

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	[x].[Id],
	[x].[NoConversion],
	[x].[Test1],
	[x].[Test2]
FROM
	[TableWithConverterValue] [x]
WHERE
	[x].[Test1] = 'X'

