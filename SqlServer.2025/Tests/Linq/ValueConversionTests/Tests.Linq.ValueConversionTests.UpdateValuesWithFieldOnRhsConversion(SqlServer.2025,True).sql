-- SqlServer.2025

UPDATE
	[TableWithConverterValue]
SET
	[Test1] = IIF([TableWithConverterValue].[Test2] IS NULL, N'X', NULL)
WHERE
	[TableWithConverterValue].[Id] = 1

-- SqlServer.2025

SELECT TOP (2)
	[x].[Id],
	[x].[NoConversion],
	[x].[Test1],
	[x].[Test2]
FROM
	[TableWithConverterValue] [x]
WHERE
	[x].[Id] = 1

-- SqlServer.2025

SELECT TOP (2)
	[x].[Id],
	[x].[NoConversion],
	[x].[Test1],
	[x].[Test2]
FROM
	[TableWithConverterValue] [x]
WHERE
	[x].[Id] = 1

