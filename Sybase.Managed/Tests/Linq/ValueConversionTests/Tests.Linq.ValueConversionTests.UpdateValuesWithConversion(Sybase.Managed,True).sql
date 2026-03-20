-- Sybase.Managed Sybase

UPDATE
	[TableWithConverterValue]
SET
	[Test1] = NULL
WHERE
	[TableWithConverterValue].[Id] = 1

-- Sybase.Managed Sybase

SELECT TOP 2
	[x].[Id],
	[x].[NoConversion],
	[x].[Test1],
	[x].[Test2]
FROM
	[TableWithConverterValue] [x]
WHERE
	[x].[Id] = 1

-- Sybase.Managed Sybase

UPDATE
	[TableWithConverterValue]
SET
	[Test1] = 'X'
WHERE
	[TableWithConverterValue].[Id] = 2

-- Sybase.Managed Sybase

SELECT TOP 2
	[x].[Id],
	[x].[NoConversion],
	[x].[Test1],
	[x].[Test2]
FROM
	[TableWithConverterValue] [x]
WHERE
	[x].[Id] = 2

-- Sybase.Managed Sybase

SELECT
	[x].[Id],
	[x].[NoConversion],
	[x].[Test1],
	[x].[Test2]
FROM
	[TableWithConverterValue] [x]
WHERE
	[x].[Test1] = 'X'

