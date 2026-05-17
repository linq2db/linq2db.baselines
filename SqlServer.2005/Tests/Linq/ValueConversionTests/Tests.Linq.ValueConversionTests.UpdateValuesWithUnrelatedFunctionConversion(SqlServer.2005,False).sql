-- SqlServer.2005
DECLARE @yes NVarChar(4000) -- String
SET     @yes = N'X'
DECLARE @no NVarChar(4000) -- String
SET     @no = NULL

UPDATE
	[TableWithConverterValue]
SET
	[Test1] = CASE
		WHEN ([TableWithConverterValue].[Id] > 0) THEN @yes
		ELSE @no
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

