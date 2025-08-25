BeforeExecute
-- SqlServer.2022.MS SqlServer.2022 (asynchronously)

MERGE INTO [ReviewIndexes] [Target]
USING (
	SELECT
		[t1].[Id],
		[t1].[Value] as [Value_1]
	FROM
		[ReviewIndexes] [t1]
) [Source]
(
	[Id],
	[Value_1]
)
ON ([Target].[Id] = [Source].[Id])

WHEN MATCHED THEN
UPDATE
SET
	[Value] = [Source].[Value_1]

WHEN NOT MATCHED THEN
INSERT
(
	[Id],
	[Value]
)
VALUES
(
	[Source].[Id],
	[Source].[Value_1]
)
;

