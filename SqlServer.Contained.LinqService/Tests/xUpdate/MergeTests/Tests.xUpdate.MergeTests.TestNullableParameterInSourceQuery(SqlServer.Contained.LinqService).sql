BeforeExecute
-- SqlServer.Contained SqlServer.2019 (asynchronously)

MERGE INTO [TestNullableParameterTarget] [Target]
USING (
	SELECT
		2 as [Id1],
		[t1].[Id] as [Id2]
	FROM
		[TestNullableParameterSource] [t1]
	WHERE
		1 = 0
) [Source]
(
	[Id1],
	[Id2]
)
ON ([Target].[Id1] = [Source].[Id1] AND [Target].[Id2] = [Source].[Id2])

WHEN NOT MATCHED THEN
INSERT
(
	[Id1],
	[Id2]
)
VALUES
(
	[Source].[Id1],
	[Source].[Id2]
)
;

BeforeExecute
-- SqlServer.Contained SqlServer.2019 (asynchronously)
DECLARE @id Int -- Int32
SET     @id = 1

MERGE INTO [TestNullableParameterTarget] [Target]
USING (
	SELECT
		2 as [Id1],
		[t1].[Id] as [Id2]
	FROM
		[TestNullableParameterSource] [t1]
	WHERE
		[t1].[Id] = @id
) [Source]
(
	[Id1],
	[Id2]
)
ON ([Target].[Id1] = [Source].[Id1] AND [Target].[Id2] = [Source].[Id2])

WHEN NOT MATCHED THEN
INSERT
(
	[Id1],
	[Id2]
)
VALUES
(
	[Source].[Id1],
	[Source].[Id2]
)
;

