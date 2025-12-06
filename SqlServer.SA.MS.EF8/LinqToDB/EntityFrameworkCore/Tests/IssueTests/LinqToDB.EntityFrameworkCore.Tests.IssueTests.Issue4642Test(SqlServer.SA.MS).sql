-- SqlServer.2019
DECLARE @systemId VarChar(20) -- AnsiString
SET     @systemId = N'system'

MERGE INTO [Issue4642Table2] [Target]
USING (
	SELECT
		[x].[Id],
		[x].[SystemId],
		[x].[Timestamp] as [Timestamp_1]
	FROM
		[Issue4642Table1] [x_1]
			INNER JOIN [Issue4642Table2] [x] ON [x_1].[Id] = [x].[Id]
	WHERE
		[x_1].[Id] IN (1) AND [x].[SystemId] = @systemId
) [Source]
(
	[Id],
	[SystemId],
	[Timestamp_1]
)
ON ([Target].[Id] = [Source].[Id] AND [Target].[SystemId] = [Source].[SystemId])

WHEN MATCHED THEN
UPDATE
SET
	[Timestamp] = [Source].[Timestamp_1]

WHEN NOT MATCHED THEN
INSERT
(
	[Id],
	[SystemId],
	[Timestamp]
)
VALUES
(
	[Source].[Id],
	[Source].[SystemId],
	[Source].[Timestamp_1]
)
OUTPUT
	$action,
	INSERTED.[Id]
;



