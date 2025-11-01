-- Sybase.Managed Sybase

DELETE FROM [TestMerge1]
FROM
	[TestMerge1] [t1]

-- Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Field1 Integer -- Int32
SET     @Field1 = NULL
DECLARE @Field2 Integer -- Int32
SET     @Field2 = NULL
DECLARE @Field4 Integer -- Int32
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

-- Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @Field1 Integer -- Int32
SET     @Field1 = 2
DECLARE @Field2 Integer -- Int32
SET     @Field2 = NULL
DECLARE @Field4 Integer -- Int32
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

-- Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
SET     @Id = 3
DECLARE @Field1 Integer -- Int32
SET     @Field1 = NULL
DECLARE @Field2 Integer -- Int32
SET     @Field2 = 3
DECLARE @Field4 Integer -- Int32
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

-- Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
SET     @Id = 4
DECLARE @Field1 Integer -- Int32
SET     @Field1 = 5
DECLARE @Field2 Integer -- Int32
SET     @Field2 = 6
DECLARE @Field4 Integer -- Int32
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

-- Sybase.Managed Sybase

DELETE FROM [TestMerge2]
FROM
	[TestMerge2] [t1]

-- Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
SET     @Id = 3
DECLARE @Field1 Integer -- Int32
SET     @Field1 = NULL
DECLARE @Field2 Integer -- Int32
SET     @Field2 = 3
DECLARE @Field4 Integer -- Int32
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

-- Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
SET     @Id = 4
DECLARE @Field1 Integer -- Int32
SET     @Field1 = 5
DECLARE @Field2 Integer -- Int32
SET     @Field2 = 7
DECLARE @Field4 Integer -- Int32
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

-- Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
SET     @Id = 5
DECLARE @Field1 Integer -- Int32
SET     @Field1 = 10
DECLARE @Field2 Integer -- Int32
SET     @Field2 = 4
DECLARE @Field4 Integer -- Int32
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

-- Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
SET     @Id = 6
DECLARE @Field1 Integer -- Int32
SET     @Field1 = NULL
DECLARE @Field2 Integer -- Int32
SET     @Field2 = NULL
DECLARE @Field4 Integer -- Int32
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

-- Sybase.Managed Sybase

SELECT
	[t1].[Id],
	[t1].[Field1],
	[t1].[Field2],
	[t1].[Field3],
	[t1].[Field4],
	[t1].[Field5]
FROM
	[TestMerge2] [t1]

-- Sybase.Managed Sybase

MERGE INTO [TestMerge1] [Target]
USING (
	SELECT 3 AS [Key_1], CAST(NULL AS Int) AS [Field01], 3 AS [Field02], CAST(NULL AS Int) AS [Field03], CAST(NULL AS Int) AS [Field04], CAST(NULL AS Int) AS [Field05]
	UNION ALL
	SELECT 4, 5, 7, NULL, 214, NULL
	UNION ALL
	SELECT 5, 10, 4, NULL, NULL, NULL
	UNION ALL
	SELECT 6, NULL, NULL, NULL, 216, NULL) [Source]
(
	[Key_1],
	[Field01],
	[Field02],
	[Field03],
	[Field04],
	[Field05]
)
ON ([Target].[Id] = [Source].[Key_1])

WHEN MATCHED AND [Source].[Field04] = 214 THEN
UPDATE
SET
	[Field1] = [Source].[Field01],
	[Field2] = [Source].[Field02],
	[Field3] = [Source].[Field03],
	[Field4] = [Source].[Field04],
	[Field5] = [Source].[Field05]

-- Sybase.Managed Sybase

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

