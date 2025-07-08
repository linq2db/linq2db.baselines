BeforeExecute
-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

DELETE [t1]
FROM
	[TestMerge1] [t1]

BeforeExecute
-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

MERGE INTO [TestMerge1] [Target]
USING (VALUES
	(0,1,2,4)
) [Source]
(
	[Id],
	[Field1],
	[Field2],
	[Field4]
)
ON ([Target].[Id] = [Source].[Id])

WHEN NOT MATCHED THEN
INSERT
(
	[Id],
	[Field1],
	[Field2],
	[Field4]
)
VALUES
(
	[Source].[Id],
	[Source].[Field1],
	[Source].[Field2],
	[Source].[Field4]
)
;

BeforeExecute
-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

SELECT
	[t1].[Id],
	[t1].[Field1],
	[t1].[Field2],
	[t1].[Field3],
	[t1].[Field4],
	[t1].[Field5]
FROM
	[TestMerge1] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

DELETE [t1]
FROM
	[TestMerge1] [t1]

BeforeExecute
-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

MERGE INTO [TestMerge1] [Target]
USING (VALUES
	(10,11,12,14)
) [Source]
(
	[Id],
	[Field1],
	[Field2],
	[Field4]
)
ON ([Target].[Id] = [Source].[Id])

WHEN NOT MATCHED THEN
INSERT
(
	[Id],
	[Field1],
	[Field2],
	[Field4]
)
VALUES
(
	[Source].[Id],
	[Source].[Field1],
	[Source].[Field2],
	[Source].[Field4]
)
;

BeforeExecute
-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

SELECT
	[t1].[Id],
	[t1].[Field1],
	[t1].[Field2],
	[t1].[Field3],
	[t1].[Field4],
	[t1].[Field5]
FROM
	[TestMerge1] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

DELETE [t1]
FROM
	[TestMerge1] [t1]

BeforeExecute
-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

MERGE INTO [TestMerge1] [Target]
USING (VALUES
	(20,21,22,24), (30,31,32,34)
) [Source]
(
	[Id],
	[Field1],
	[Field2],
	[Field4]
)
ON ([Target].[Id] = [Source].[Id])

WHEN NOT MATCHED THEN
INSERT
(
	[Id],
	[Field1],
	[Field2],
	[Field4]
)
VALUES
(
	[Source].[Id],
	[Source].[Field1],
	[Source].[Field2],
	[Source].[Field4]
)
;

BeforeExecute
-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

SELECT
	[t1].[Id],
	[t1].[Field1],
	[t1].[Field2],
	[t1].[Field3],
	[t1].[Field4],
	[t1].[Field5]
FROM
	[TestMerge1] [t1]
ORDER BY
	[t1].[Id]

