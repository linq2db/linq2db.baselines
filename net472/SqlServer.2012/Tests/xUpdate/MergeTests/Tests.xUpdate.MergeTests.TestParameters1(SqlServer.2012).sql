BeforeExecute
-- SqlServer.2012

DELETE [t1]
FROM
	[TestMerge1] [t1]

BeforeExecute
-- SqlServer.2012
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
-- SqlServer.2012
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
-- SqlServer.2012
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
-- SqlServer.2012
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
-- SqlServer.2012

DELETE [t1]
FROM
	[TestMerge2] [t1]

BeforeExecute
-- SqlServer.2012
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
-- SqlServer.2012
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
-- SqlServer.2012
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
-- SqlServer.2012
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
-- SqlServer.2012
DECLARE @Val2 Int -- Int32
SET     @Val2 = 2
DECLARE @Val5 Int -- Int32
SET     @Val5 = 5
DECLARE @Val4 Int -- Int32
SET     @Val4 = 34
DECLARE @Val1 Int -- Int32
SET     @Val1 = 1
DECLARE @Val6 Int -- Int32
SET     @Val6 = 5
DECLARE @Val3 Int -- Int32
SET     @Val3 = 3
DECLARE @Val7 Int -- Int32
SET     @Val7 = 5
DECLARE @Field3 Int -- Int32
SET     @Field3 = 125

MERGE INTO [TestMerge1] [Target]
USING (
	SELECT
		[_].[Id] as [OtherId],
		[_].[Field1],
		@Val2 as [Field7]
	FROM
		[TestMerge2] [_]
	WHERE
		[_].[Id] <> @Val5
) [Source]
(
	[OtherId],
	[Field1],
	[Field7]
)
ON (([Target].[Id] = [Source].[OtherId] OR [Target].[Id] = @Val4))

WHEN NOT MATCHED AND [Source].[Field7] = @Val1 + [Source].[OtherId] THEN
INSERT
(
	[Id],
	[Field1]
)
VALUES
(
	[Source].[OtherId] + @Val6,
	[Source].[Field1]
)

WHEN MATCHED AND [Source].[OtherId] = @Val3 THEN
UPDATE
SET
	[Target].[Field4] = @Val7
WHEN MATCHED AND [Target].[Field3] = @Field3 THEN DELETE
;

