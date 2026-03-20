-- SqlServer.2008

UPDATE
	[TableWithConverterValue]
SET
	[Test1] = NULL
WHERE
	[TableWithConverterValue].[Id] = 1

-- SqlServer.2008

SELECT TOP (2)
	[x].[Id],
	[x].[NoConversion],
	[x].[Test1],
	[x].[Test2]
FROM
	[TableWithConverterValue] [x]
WHERE
	[x].[Id] = 1

-- SqlServer.2008

UPDATE
	[TableWithConverterValue]
SET
	[Test1] = 'X'
WHERE
	[TableWithConverterValue].[Id] = 2

-- SqlServer.2008

SELECT TOP (2)
	[x].[Id],
	[x].[NoConversion],
	[x].[Test1],
	[x].[Test2]
FROM
	[TableWithConverterValue] [x]
WHERE
	[x].[Id] = 2

-- SqlServer.2008

SELECT
	[x].[Id],
	[x].[NoConversion],
	[x].[Test1],
	[x].[Test2]
FROM
	[TableWithConverterValue] [x]
WHERE
	[x].[Test1] = 'X'

