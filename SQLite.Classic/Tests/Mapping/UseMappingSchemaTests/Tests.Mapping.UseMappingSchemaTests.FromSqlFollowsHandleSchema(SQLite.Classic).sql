-- SQLite.Classic SQLite
SELECT
	[t1].[Id],
	[t1].[Value],
	[t1].[Name]
FROM
	(
		SELECT Id, Value, Name FROM SourceSchemaRow
	) [t1]
LIMIT 2

