-- SQLite.MS SQLite
DECLARE @yes NVarChar(1) -- String
SET     @yes = 'X'
DECLARE @no NVarChar -- String
SET     @no = NULL

UPDATE
	[TableWithConverterValue]
SET
	[Test1] = CASE
		WHEN [TableWithConverterValue].[Test2] IS NULL THEN @yes
		ELSE @no
	END
WHERE
	[TableWithConverterValue].[Id] = 1

-- SQLite.MS SQLite

SELECT
	[x].[Id],
	[x].[NoConversion],
	[x].[Test1],
	[x].[Test2]
FROM
	[TableWithConverterValue] [x]
WHERE
	[x].[Id] = 1
LIMIT 2

-- SQLite.MS SQLite

SELECT
	[x].[Id],
	[x].[NoConversion],
	[x].[Test1],
	[x].[Test2]
FROM
	[TableWithConverterValue] [x]
WHERE
	[x].[Id] = 1
LIMIT 2

