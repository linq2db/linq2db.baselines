BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

DROP TABLE IF EXISTS [TestNullableParameterTarget]

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

IF (OBJECT_ID(N'[TestNullableParameterTarget]', N'U') IS NULL)
	CREATE TABLE [TestNullableParameterTarget]
	(
		[Id1] Int NOT NULL,
		[Id2] Int NOT NULL,

		CONSTRAINT [PK_TestNullableParameterTarget] PRIMARY KEY CLUSTERED ([Id1], [Id2])
	)

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

DROP TABLE IF EXISTS [TestNullableParameterSource]

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

IF (OBJECT_ID(N'[TestNullableParameterSource]', N'U') IS NULL)
	CREATE TABLE [TestNullableParameterSource]
	(
		[Id] Int NOT NULL,

		CONSTRAINT [PK_TestNullableParameterSource] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

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
-- SqlServer.SA.MS SqlServer.2019
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

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

DROP TABLE IF EXISTS [TestNullableParameterSource]

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

DROP TABLE IF EXISTS [TestNullableParameterTarget]

