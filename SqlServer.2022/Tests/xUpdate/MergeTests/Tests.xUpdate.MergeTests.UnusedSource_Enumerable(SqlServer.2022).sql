-- SqlServer.2022

MERGE INTO [UnusedSourceTable] [Target]
USING (VALUES
	(1)
) [Source]
(
[Unused]
)
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

-- SqlServer.2022

SELECT TOP (2)
	[r].[Id],
	[r].[Value]
FROM
	[UnusedSourceTable] [r]
WHERE
	[r].[Id] <> 1

