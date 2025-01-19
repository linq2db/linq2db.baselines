BeforeExecute
-- SqlServer.2022

MERGE INTO [CacheTestTable] [Target]
USING (VALUES
	(1,1), (2,2)
) [Source]
(
	[source_Id],
	[source_Value]
)
ON ([Target].[Id] = [Source].[source_Id])

WHEN MATCHED THEN
UPDATE
SET
	[Value] = [Source].[source_Value]

WHEN NOT MATCHED THEN
INSERT
(
	[Id],
	[Value]
)
VALUES
(
	[Source].[source_Id],
	[Source].[source_Value]
)
;

BeforeExecute
-- SqlServer.2022

SELECT
	[t1].[Id],
	[t1].[Value]
FROM
	[CacheTestTable] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- SqlServer.2022

MERGE INTO [CacheTestTable] [Target]
USING (VALUES
	(1,1), (2,4), (3,3)
) [Source]
(
	[source_Id],
	[source_Value]
)
ON ([Target].[Id] = [Source].[source_Id])

WHEN MATCHED THEN
UPDATE
SET
	[Value] = [Source].[source_Value]

WHEN NOT MATCHED THEN
INSERT
(
	[Id],
	[Value]
)
VALUES
(
	[Source].[source_Id],
	[Source].[source_Value]
)
;

BeforeExecute
-- SqlServer.2022

SELECT
	[t1].[Id],
	[t1].[Value]
FROM
	[CacheTestTable] [t1]
ORDER BY
	[t1].[Id]

