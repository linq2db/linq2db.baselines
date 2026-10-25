-- SqlServer.2025.MS SqlServer.2025
SELECT TOP (2)
	[t1].[Id],
	[t1].[Value],
	[t1].[Name]
FROM
	(
		SELECT Id, Value, Name FROM SourceSchemaRow
	) [t1]

