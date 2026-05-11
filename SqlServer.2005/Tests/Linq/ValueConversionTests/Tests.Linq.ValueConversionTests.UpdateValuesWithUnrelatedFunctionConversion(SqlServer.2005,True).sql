-- SqlServer.2005

UPDATE
	[TableWithConverterValue]
SET
	[Test1] = CASE
		WHEN ([TableWithConverterValue].[Id] > 0) THEN N'X'
		ELSE NULL
	END
WHERE
	[TableWithConverterValue].[Id] = 1

-- SqlServer.2005

SELECT TOP (2)
	[x].[Id],
	[x].[NoConversion],
	[x].[Test1],
	[x].[Test2]
FROM
	[TableWithConverterValue] [x]
WHERE
	[x].[Id] = 1

