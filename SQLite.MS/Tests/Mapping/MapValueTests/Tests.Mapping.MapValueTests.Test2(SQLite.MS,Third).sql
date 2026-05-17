-- SQLite.MS SQLite

SELECT
	CASE
		WHEN [t].[EnumValue] = 'F' THEN 'First'
		WHEN [t].[EnumValue] = 'S' THEN 'Second'
		WHEN [t].[EnumValue] = 'T' THEN 'Third'
		ELSE [t].[EnumValue]
	END
FROM
	[MapValueTable] [t]
LIMIT 1

