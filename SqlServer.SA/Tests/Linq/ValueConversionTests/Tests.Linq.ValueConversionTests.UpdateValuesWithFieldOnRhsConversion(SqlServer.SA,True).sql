-- SqlServer.SA SqlServer.2019

UPDATE
	[TableWithConverterValue]
SET
	[Test1] = IIF([TableWithConverterValue].[Test2] IS NULL, N'X', NULL)
WHERE
	[TableWithConverterValue].[Id] = 1

-- SqlServer.SA SqlServer.2019

SELECT TOP (2)
	[x].[Id],
	[x].[NoConversion],
	[x].[Test1],
	[x].[Test2]
FROM
	[TableWithConverterValue] [x]
WHERE
	[x].[Id] = 1

-- SqlServer.SA SqlServer.2019

SELECT TOP (2)
	[x].[Id],
	[x].[NoConversion],
	[x].[Test1],
	[x].[Test2]
FROM
	[TableWithConverterValue] [x]
WHERE
	[x].[Id] = 1

