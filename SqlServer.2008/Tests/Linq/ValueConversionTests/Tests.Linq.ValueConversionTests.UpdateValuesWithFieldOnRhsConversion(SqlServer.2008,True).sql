-- SqlServer.2008

UPDATE
	[TableWithConverterValue]
SET
	[Test1] = CASE
		WHEN [TableWithConverterValue].[Test2] IS NULL THEN N'X'
		ELSE NULL
	END
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

SELECT TOP (2)
	[x].[Id],
	[x].[NoConversion],
	[x].[Test1],
	[x].[Test2]
FROM
	[TableWithConverterValue] [x]
WHERE
	[x].[Id] = 1

