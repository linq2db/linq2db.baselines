SELECT
	[t].[id],
	[t].[value]
FROM
	[database].[schema].[table_name] [t]
		INNER JOIN FREETEXTTABLE([database].[schema].[table_name], [value], @queryText) [ft] ON [ft].[Key] = [t].[id]

SELECT
	[t].[id],
	[t].[value]
FROM
	[database].[schema].[table_name] [t]
		INNER JOIN FREETEXTTABLE([database].[schema].[table_name], [value], @queryText) [ft] ON [ft].[Key] = [t].[id]

SELECT
	[t1].[Key],
	[t1].[Rank]
FROM
	FREETEXTTABLE([database].[schema].[table_name], [value], @p) [t1]

