-- SqlCe
DECLARE @Test1 NVarChar -- String
SET     @Test1 = NULL

UPDATE
	[TableWithConverterValue]
SET
	[Test1] = @Test1
WHERE
	[TableWithConverterValue].[Id] = 1

-- SqlCe

SELECT TOP (2)
	[x].[Id],
	[x].[NoConversion],
	[x].[Test1],
	[x].[Test2]
FROM
	[TableWithConverterValue] [x]
WHERE
	[x].[Id] = 1

-- SqlCe
DECLARE @Test1 NVarChar(1) -- String
SET     @Test1 = 'X'

UPDATE
	[TableWithConverterValue]
SET
	[Test1] = @Test1
WHERE
	[TableWithConverterValue].[Id] = 2

-- SqlCe

SELECT TOP (2)
	[x].[Id],
	[x].[NoConversion],
	[x].[Test1],
	[x].[Test2]
FROM
	[TableWithConverterValue] [x]
WHERE
	[x].[Id] = 2

-- SqlCe
DECLARE @Test1 NVarChar(1) -- String
SET     @Test1 = 'X'

SELECT
	[x].[Id],
	[x].[NoConversion],
	[x].[Test1],
	[x].[Test2]
FROM
	[TableWithConverterValue] [x]
WHERE
	[x].[Test1] = @Test1

