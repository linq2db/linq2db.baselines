-- SqlServer.2022

UPDATE
	[TableWithConverterValue]
SET
	[Test1] = IIF(([TableWithConverterValue].[Id] > 0), N'X', NULL)
WHERE
	[TableWithConverterValue].[Id] = 1

-- SqlServer.2022

SELECT TOP (2)
	[x].[Id],
	[x].[NoConversion],
	[x].[Test1],
	[x].[Test2]
FROM
	[TableWithConverterValue] [x]
WHERE
	[x].[Id] = 1

