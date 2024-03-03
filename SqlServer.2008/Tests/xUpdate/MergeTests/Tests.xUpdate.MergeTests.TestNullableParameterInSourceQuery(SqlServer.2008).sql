﻿BeforeExecute
-- SqlServer.2008

IF (OBJECT_ID(N'[TestNullableParameterTarget]', N'U') IS NOT NULL)
	DROP TABLE [TestNullableParameterTarget]

BeforeExecute
-- SqlServer.2008

IF (OBJECT_ID(N'[TestNullableParameterTarget]', N'U') IS NULL)
	CREATE TABLE [TestNullableParameterTarget]
	(
		[Id1] Int NOT NULL,
		[Id2] Int NOT NULL,

		CONSTRAINT [PK_TestNullableParameterTarget] PRIMARY KEY CLUSTERED ([Id1], [Id2])
	)

BeforeExecute
-- SqlServer.2008

IF (OBJECT_ID(N'[TestNullableParameterSource]', N'U') IS NOT NULL)
	DROP TABLE [TestNullableParameterSource]

BeforeExecute
-- SqlServer.2008

IF (OBJECT_ID(N'[TestNullableParameterSource]', N'U') IS NULL)
	CREATE TABLE [TestNullableParameterSource]
	(
		[Id] Int NOT NULL,

		CONSTRAINT [PK_TestNullableParameterSource] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2008
DECLARE @id Int -- Int32
SET     @id = 0

MERGE INTO [TestNullableParameterTarget] [Target]
USING (
	SELECT
		2 as [source_Id1],
		[_].[Id] as [source_Id2]
	FROM
		[TestNullableParameterSource] [_]
	WHERE
		[_].[Id] = @id
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
-- SqlServer.2008
DECLARE @id Int -- Int32
SET     @id = 1

MERGE INTO [TestNullableParameterTarget] [Target]
USING (
	SELECT
		2 as [source_Id1],
		[_].[Id] as [source_Id2]
	FROM
		[TestNullableParameterSource] [_]
	WHERE
		[_].[Id] = @id
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
-- SqlServer.2008

IF (OBJECT_ID(N'[TestNullableParameterSource]', N'U') IS NOT NULL)
	DROP TABLE [TestNullableParameterSource]

BeforeExecute
-- SqlServer.2008

IF (OBJECT_ID(N'[TestNullableParameterTarget]', N'U') IS NOT NULL)
	DROP TABLE [TestNullableParameterTarget]

