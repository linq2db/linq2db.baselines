-- SqlServer.2008

MERGE INTO [UnusedSourceTable] [Target]
USING (
	SELECT 1 AS [Unused]
	FROM [UnusedSourceTable]	WHERE 1 = 0
)
 [Source]
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

-- SqlServer.2008

SELECT TOP (2)
	[r].[Id],
	[r].[Value]
FROM
	[UnusedSourceTable] [r]
WHERE
	[r].[Id] <> 1

