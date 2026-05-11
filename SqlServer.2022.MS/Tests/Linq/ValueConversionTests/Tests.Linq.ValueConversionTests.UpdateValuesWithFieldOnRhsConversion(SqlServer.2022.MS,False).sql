-- SqlServer.2022.MS SqlServer.2022
DECLARE @yes NVarChar(4000) -- String
SET     @yes = N'X'
DECLARE @no NVarChar(4000) -- String
SET     @no = NULL

UPDATE
	[TableWithConverterValue]
SET
	[Test1] = IIF([TableWithConverterValue].[Test2] IS NULL, @yes, @no)
WHERE
	[TableWithConverterValue].[Id] = 1

-- SqlServer.2022.MS SqlServer.2022

SELECT TOP (2)
	[x].[Id],
	[x].[NoConversion],
	[x].[Test1],
	[x].[Test2]
FROM
	[TableWithConverterValue] [x]
WHERE
	[x].[Id] = 1

-- SqlServer.2022.MS SqlServer.2022

SELECT TOP (2)
	[x].[Id],
	[x].[NoConversion],
	[x].[Test1],
	[x].[Test2]
FROM
	[TableWithConverterValue] [x]
WHERE
	[x].[Id] = 1

