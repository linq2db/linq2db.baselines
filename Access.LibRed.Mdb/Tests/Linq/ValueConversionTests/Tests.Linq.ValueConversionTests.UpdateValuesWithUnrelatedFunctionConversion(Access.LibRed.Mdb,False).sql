-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @yes NVarChar(1) -- String
SET     @yes = 'X'
DECLARE @no NVarChar -- String
SET     @no = NULL

UPDATE
	[TableWithConverterValue] [x]
SET
	[x].[Test1] = IIF(([x].[Id] > 0), @yes, @no)
WHERE
	[x].[Id] = 1

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT TOP 2
	[x].[Id],
	[x].[NoConversion],
	[x].[Test1],
	[x].[Test2]
FROM
	[TableWithConverterValue] [x]
WHERE
	[x].[Id] = 1

