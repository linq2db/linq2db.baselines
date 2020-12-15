BeforeExecute
-- SqlServer.2019.SA SqlServer.2017

CREATE TABLE [TestNullableParameterTarget]
(
	[Id1] Int NOT NULL,
	[Id2] Int NOT NULL,

	CONSTRAINT [PK_TestNullableParameterTarget] PRIMARY KEY CLUSTERED ([Id1], [Id2])
)

BeforeExecute
-- SqlServer.2019.SA SqlServer.2017

CREATE TABLE [TestNullableParameterSource]
(
	[Id] Int NOT NULL,

	CONSTRAINT [PK_TestNullableParameterSource] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- SqlServer.2019.SA SqlServer.2017

MERGE INTO [TestNullableParameterTarget] [Target]
USING (
	SELECT
		2 as [source_field0],
		[_].[Id]
	FROM
		[TestNullableParameterSource] [_]
	WHERE
		[_].[Id] IS NULL
) [Source]
(
	[source_field0],
	[Id]
)
ON ([Target].[Id1] = [Source].[source_field0] AND [Target].[Id2] = [Source].[Id])

WHEN NOT MATCHED THEN
INSERT
(
	[Id1],
	[Id2]
)
VALUES
(
	[Source].[source_field0],
	[Source].[Id]
)
;

BeforeExecute
-- SqlServer.2019.SA SqlServer.2017
DECLARE @id Int -- Int32
SET     @id = 1

MERGE INTO [TestNullableParameterTarget] [Target]
USING (
	SELECT
		2 as [source_field0],
		[_].[Id]
	FROM
		[TestNullableParameterSource] [_]
	WHERE
		[_].[Id] = @id
) [Source]
(
	[source_field0],
	[Id]
)
ON ([Target].[Id1] = [Source].[source_field0] AND [Target].[Id2] = [Source].[Id])

WHEN NOT MATCHED THEN
INSERT
(
	[Id1],
	[Id2]
)
VALUES
(
	[Source].[source_field0],
	[Source].[Id]
)
;

BeforeExecute
-- SqlServer.2019.SA SqlServer.2017

DROP TABLE [TestNullableParameterSource]

BeforeExecute
-- SqlServer.2019.SA SqlServer.2017

DROP TABLE [TestNullableParameterTarget]

