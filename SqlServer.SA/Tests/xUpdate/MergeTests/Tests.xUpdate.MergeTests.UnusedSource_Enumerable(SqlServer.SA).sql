-- SqlServer.SA SqlServer.2019

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

-- SqlServer.SA SqlServer.2019

SELECT TOP (2)
	[r].[Id],
	[r].[Value]
FROM
	[UnusedSourceTable] [r]
WHERE
	[r].[Id] <> 1

