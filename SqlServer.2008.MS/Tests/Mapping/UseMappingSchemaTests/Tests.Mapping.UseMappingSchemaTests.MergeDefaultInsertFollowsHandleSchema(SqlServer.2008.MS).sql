-- SqlServer.2008.MS SqlServer.2008
MERGE INTO [SourceSchemaRow] [Target]
USING (VALUES
	(1,5,N'a')
) [Source]
(
	[Id],
	[Value_1],
	[Name]
)
ON ([Target].[Id] = [Source].[Id])

WHEN NOT MATCHED THEN
INSERT
(
	[Id],
	[Value],
	[Name]
)
VALUES
(
	[Source].[Id],
	[Source].[Value_1],
	[Source].[Name]
)
;

-- SqlServer.2008.MS SqlServer.2008
SELECT TOP (2)
	[t1].[Id],
	[t1].[Value],
	[t1].[Name]
FROM
	[SourceSchemaRow] [t1]

