-- SqlServer.2008.MS SqlServer.2008
SELECT TOP (2)
	[t1].[Id],
	[t1].[Value],
	[t1].[Name]
FROM
	(
		SELECT Id, Value, Name FROM SourceSchemaRow
	) [t1]

