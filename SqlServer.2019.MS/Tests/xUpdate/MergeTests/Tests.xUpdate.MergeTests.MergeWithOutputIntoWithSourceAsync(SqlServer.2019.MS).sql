﻿BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

CREATE TABLE [tempdb]..[#InsertTempTable]
(
	[Action]    NVarChar(4000)     NULL,
	[NewId]     Int            NOT NULL,
	[DeletedId] Int                NULL,
	[SourceId]  Int                NULL
)

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

DELETE [t1]
FROM
	[TestMerge1] [t1]

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Field1 Int -- Int32
SET     @Field1 = NULL
DECLARE @Field2 Int -- Int32
SET     @Field2 = NULL
DECLARE @Field4 Int -- Int32
SET     @Field4 = NULL

INSERT INTO [TestMerge1]
(
	[Id],
	[Field1],
	[Field2],
	[Field4]
)
VALUES
(
	@Id,
	@Field1,
	@Field2,
	@Field4
)

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @Field1 Int -- Int32
SET     @Field1 = 2
DECLARE @Field2 Int -- Int32
SET     @Field2 = NULL
DECLARE @Field4 Int -- Int32
SET     @Field4 = NULL

INSERT INTO [TestMerge1]
(
	[Id],
	[Field1],
	[Field2],
	[Field4]
)
VALUES
(
	@Id,
	@Field1,
	@Field2,
	@Field4
)

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 3
DECLARE @Field1 Int -- Int32
SET     @Field1 = NULL
DECLARE @Field2 Int -- Int32
SET     @Field2 = 3
DECLARE @Field4 Int -- Int32
SET     @Field4 = 203

INSERT INTO [TestMerge1]
(
	[Id],
	[Field1],
	[Field2],
	[Field4]
)
VALUES
(
	@Id,
	@Field1,
	@Field2,
	@Field4
)

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 4
DECLARE @Field1 Int -- Int32
SET     @Field1 = 5
DECLARE @Field2 Int -- Int32
SET     @Field2 = 6
DECLARE @Field4 Int -- Int32
SET     @Field4 = NULL

INSERT INTO [TestMerge1]
(
	[Id],
	[Field1],
	[Field2],
	[Field4]
)
VALUES
(
	@Id,
	@Field1,
	@Field2,
	@Field4
)

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

DELETE [t1]
FROM
	[TestMerge2] [t1]

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 3
DECLARE @Field1 Int -- Int32
SET     @Field1 = NULL
DECLARE @Field2 Int -- Int32
SET     @Field2 = 3
DECLARE @Field4 Int -- Int32
SET     @Field4 = NULL

INSERT INTO [TestMerge2]
(
	[Id],
	[Field1],
	[Field2],
	[Field4]
)
VALUES
(
	@Id,
	@Field1,
	@Field2,
	@Field4
)

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 4
DECLARE @Field1 Int -- Int32
SET     @Field1 = 5
DECLARE @Field2 Int -- Int32
SET     @Field2 = 7
DECLARE @Field4 Int -- Int32
SET     @Field4 = 214

INSERT INTO [TestMerge2]
(
	[Id],
	[Field1],
	[Field2],
	[Field4]
)
VALUES
(
	@Id,
	@Field1,
	@Field2,
	@Field4
)

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 5
DECLARE @Field1 Int -- Int32
SET     @Field1 = 10
DECLARE @Field2 Int -- Int32
SET     @Field2 = 4
DECLARE @Field4 Int -- Int32
SET     @Field4 = NULL

INSERT INTO [TestMerge2]
(
	[Id],
	[Field1],
	[Field2],
	[Field4]
)
VALUES
(
	@Id,
	@Field1,
	@Field2,
	@Field4
)

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 6
DECLARE @Field1 Int -- Int32
SET     @Field1 = NULL
DECLARE @Field2 Int -- Int32
SET     @Field2 = NULL
DECLARE @Field4 Int -- Int32
SET     @Field4 = 216

INSERT INTO [TestMerge2]
(
	[Id],
	[Field1],
	[Field2],
	[Field4]
)
VALUES
(
	@Id,
	@Field1,
	@Field2,
	@Field4
)

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019 (asynchronously)

MERGE INTO [TestMerge1] [Target]
USING (
	SELECT
		[_].[Id] as [source_Id],
		[_].[Field1] as [source_Field1],
		[_].[Field2] as [source_Field2],
		[_].[Field4] as [source_Field4]
	FROM
		[TestMerge2] [_]
	WHERE
		[_].[Id] = 5
) [Source]
(
	[source_Id],
	[source_Field1],
	[source_Field2],
	[source_Field4]
)
ON ([Target].[Id] = [Source].[source_Id])

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
	[Source].[source_Id],
	[Source].[source_Field1],
	[Source].[source_Field2],
	[Source].[source_Field4]
)
OUTPUT
	$action,
	INSERTED.[Id],
	DELETED.[Id],
	[Source].[source_Id] + 1
INTO [tempdb]..[#InsertTempTable]
(
	[Action],
	[NewId],
	[DeletedId],
	[SourceId]
)
;

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

SELECT
	[t1].[Action],
	[t1].[NewId],
	[t1].[DeletedId],
	[t1].[SourceId]
FROM
	[tempdb]..[#InsertTempTable] [t1]

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

DROP TABLE IF EXISTS [tempdb]..[#InsertTempTable]

