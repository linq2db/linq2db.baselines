-- Sybase.Managed Sybase
MERGE INTO [SourceSchemaRow] [Target]
USING (
	SELECT 1 AS [Id], 5 AS [Value_1], 'a' AS [Name]) [Source]
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

-- Sybase.Managed Sybase
SELECT TOP 2
	[t1].[Id],
	[t1].[Value],
	[t1].[Name]
FROM
	[SourceSchemaRow] [t1]

