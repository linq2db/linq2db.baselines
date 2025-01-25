BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

MERGE INTO [TestNullableParameterTarget] [Target]
USING (
	SELECT
		2 as [source_Id1],
		[t1].[Id] as [source_Id2]
	FROM
		[TestNullableParameterSource] [t1]
	WHERE
		1 = 0
) [Source]
(
	[source_Id1],
	[source_Id2]
)
ON ([Target].[Id1] = [Source].[source_Id1] AND [Target].[Id2] = [Source].[source_Id2])

WHEN NOT MATCHED THEN
INSERT
(
	[Id1],
	[Id2]
)
VALUES
(
	[Source].[source_Id1],
	[Source].[source_Id2]
)
;

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016
DECLARE @id Int -- Int32
SET     @id = 1

MERGE INTO [TestNullableParameterTarget] [Target]
USING (
	SELECT
		2 as [source_Id1],
		[t1].[Id] as [source_Id2]
	FROM
		[TestNullableParameterSource] [t1]
	WHERE
		[t1].[Id] = @id
) [Source]
(
	[source_Id1],
	[source_Id2]
)
ON ([Target].[Id1] = [Source].[source_Id1] AND [Target].[Id2] = [Source].[source_Id2])

WHEN NOT MATCHED THEN
INSERT
(
	[Id1],
	[Id2]
)
VALUES
(
	[Source].[source_Id1],
	[Source].[source_Id2]
)
;

