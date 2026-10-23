-- SqlServer.2019.MS SqlServer.2019
MERGE INTO [UnusedSourceTable] [Target]
USING (
	SELECT
		*
	FROM
		[UnusedSourceTable] [Target_1]
) [Source]
ON ([Target].[Value] = 5)

WHEN NOT MATCHED THEN
INSERT
(
	[Id],
	[Value]
)
VALUES
(
	2,
	5
)
;

-- SqlServer.2019.MS SqlServer.2019
SELECT TOP (2)
	[r].[Id],
	[r].[Value]
FROM
	[UnusedSourceTable] [r]
WHERE
	[r].[Id] <> 1

