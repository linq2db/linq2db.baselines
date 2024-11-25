SELECT [i].[Id]
FROM [Issue4642Table1] AS [i]


SELECT [i].[Id], [i].[SystemId], [i].[Timestamp]
FROM [Issue4642Table2] AS [i]


--  SqlServer.2022 (asynchronously)
DECLARE @systemId NVarChar(4000) -- String
SET     @systemId = N'system'

MERGE INTO [Issue4642Table2] [Target]
USING (
	SELECT
		[y].[Id] as [source_Id],
		[y].[SystemId] as [source_SystemId],
		[y].[Timestamp] as [source_Timestamp]
	FROM
		(SELECT NULL [Id] WHERE 1 = 0) [x]([Id])
			INNER JOIN (SELECT NULL [SystemId], NULL [Id], NULL [Timestamp] WHERE 1 = 0) [y]([SystemId], [Id], [Timestamp]) ON [x].[Id] = [y].[Id]
	WHERE
		[x].[Id] IN (1) AND [y].[SystemId] = @systemId
) [Source]
(
	[source_Id],
	[source_SystemId],
	[source_Timestamp]
)
ON ([Target].[Id] = [Source].[source_Id] AND [Target].[SystemId] = [Source].[source_SystemId])

WHEN MATCHED THEN
UPDATE
SET
	[Timestamp] = [Source].[source_Timestamp]

WHEN NOT MATCHED THEN
INSERT
(
	[Id],
	[SystemId],
	[Timestamp]
)
VALUES
(
	[Source].[source_Id],
	[Source].[source_SystemId],
	[Source].[source_Timestamp]
)
OUTPUT
	$action,
	INSERTED.[Id]
;



