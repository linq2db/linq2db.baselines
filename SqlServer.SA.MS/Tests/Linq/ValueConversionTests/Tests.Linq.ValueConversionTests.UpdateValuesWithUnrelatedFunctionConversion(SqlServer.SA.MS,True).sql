-- SqlServer.SA.MS SqlServer.2019

UPDATE
	[TableWithConverterValue]
SET
	[Test1] = IIF(([TableWithConverterValue].[Id] > 0), N'X', NULL)
WHERE
	[TableWithConverterValue].[Id] = 1

-- SqlServer.SA.MS SqlServer.2019

SELECT TOP (2)
	[x].[Id],
	[x].[NoConversion],
	[x].[Test1],
	[x].[Test2]
FROM
	[TableWithConverterValue] [x]
WHERE
	[x].[Id] = 1

