-- Sybase.Managed Sybase

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

-- Sybase.Managed Sybase

SELECT TOP 2
	[r].[Id],
	[r].[Value]
FROM
	[UnusedSourceTable] [r]
WHERE
	[r].[Id] <> 1

