-- Sybase.Managed Sybase
DECLARE @Test1 Char -- AnsiStringFixedLength
SET     @Test1 = NULL

UPDATE
	[TableWithConverterValue]
SET
	[Test1] = @Test1
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
DECLARE @Test1 Char(1) -- AnsiStringFixedLength
SET     @Test1 = 'X'

UPDATE
	[TableWithConverterValue]
SET
	[Test1] = @Test1
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

