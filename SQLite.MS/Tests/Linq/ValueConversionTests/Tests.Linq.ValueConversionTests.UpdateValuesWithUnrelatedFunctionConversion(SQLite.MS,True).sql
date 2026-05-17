-- SQLite.MS SQLite

UPDATE
	[TableWithConverterValue]
SET
	[Test1] = CASE
		WHEN ([TableWithConverterValue].[Id] > 0) THEN 'X'
		ELSE NULL
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

