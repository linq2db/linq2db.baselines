-- Informix.DB2 Informix

DELETE FROM
	TestMerge1

-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @Field1 Integer -- Int32
SET     @Field1 = NULL
DECLARE @Field2 Integer -- Int32
SET     @Field2 = NULL
DECLARE @Field4 Integer -- Int32
SET     @Field4 = NULL

INSERT INTO TestMerge1
(
	Id,
	Field1,
	Field2,
	Field4
)
VALUES
(
	@Id,
	@Field1,
	@Field2,
	@Field4
)

-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 2
DECLARE @Field1 Integer(4) -- Int32
SET     @Field1 = 2
DECLARE @Field2 Integer -- Int32
SET     @Field2 = NULL
DECLARE @Field4 Integer -- Int32
SET     @Field4 = NULL

INSERT INTO TestMerge1
(
	Id,
	Field1,
	Field2,
	Field4
)
VALUES
(
	@Id,
	@Field1,
	@Field2,
	@Field4
)

-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 3
DECLARE @Field1 Integer -- Int32
SET     @Field1 = NULL
DECLARE @Field2 Integer(4) -- Int32
SET     @Field2 = 3
DECLARE @Field4 Integer(4) -- Int32
SET     @Field4 = 203

INSERT INTO TestMerge1
(
	Id,
	Field1,
	Field2,
	Field4
)
VALUES
(
	@Id,
	@Field1,
	@Field2,
	@Field4
)

-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 4
DECLARE @Field1 Integer(4) -- Int32
SET     @Field1 = 5
DECLARE @Field2 Integer(4) -- Int32
SET     @Field2 = 6
DECLARE @Field4 Integer -- Int32
SET     @Field4 = NULL

INSERT INTO TestMerge1
(
	Id,
	Field1,
	Field2,
	Field4
)
VALUES
(
	@Id,
	@Field1,
	@Field2,
	@Field4
)

-- Informix.DB2 Informix

DELETE FROM
	TestMerge2

-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 3
DECLARE @Field1 Integer -- Int32
SET     @Field1 = NULL
DECLARE @Field2 Integer(4) -- Int32
SET     @Field2 = 3
DECLARE @Field4 Integer -- Int32
SET     @Field4 = NULL

INSERT INTO TestMerge2
(
	Id,
	Field1,
	Field2,
	Field4
)
VALUES
(
	@Id,
	@Field1,
	@Field2,
	@Field4
)

-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 4
DECLARE @Field1 Integer(4) -- Int32
SET     @Field1 = 5
DECLARE @Field2 Integer(4) -- Int32
SET     @Field2 = 7
DECLARE @Field4 Integer(4) -- Int32
SET     @Field4 = 214

INSERT INTO TestMerge2
(
	Id,
	Field1,
	Field2,
	Field4
)
VALUES
(
	@Id,
	@Field1,
	@Field2,
	@Field4
)

-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 5
DECLARE @Field1 Integer(4) -- Int32
SET     @Field1 = 10
DECLARE @Field2 Integer(4) -- Int32
SET     @Field2 = 4
DECLARE @Field4 Integer -- Int32
SET     @Field4 = NULL

INSERT INTO TestMerge2
(
	Id,
	Field1,
	Field2,
	Field4
)
VALUES
(
	@Id,
	@Field1,
	@Field2,
	@Field4
)

-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 6
DECLARE @Field1 Integer -- Int32
SET     @Field1 = NULL
DECLARE @Field2 Integer -- Int32
SET     @Field2 = NULL
DECLARE @Field4 Integer(4) -- Int32
SET     @Field4 = 216

INSERT INTO TestMerge2
(
	Id,
	Field1,
	Field2,
	Field4
)
VALUES
(
	@Id,
	@Field1,
	@Field2,
	@Field4
)

-- Informix.DB2 Informix

MERGE INTO TestMerge1 Target
USING (
	SELECT 3::Int AS OtherId, NULL::Int AS OtherField1, NULL::Int AS OtherField5, 3::Int AS OtherField2, NULL::Int AS OtherField4, 113::Int AS OtherField3 FROM table(set{1})
	UNION ALL
	SELECT 4::Int, 5::Int, NULL::Int, 7::Int, 214::Int, NULL::Int FROM table(set{1})
	UNION ALL
	SELECT 5::Int, 10::Int, 315::Int, 4::Int, NULL::Int, NULL::Int FROM table(set{1})
	UNION ALL
	SELECT 6::Int, NULL::Int, 316::Int, NULL::Int, 216::Int, 116::Int FROM table(set{1})) Source
(
	OtherId,
	OtherField1,
	OtherField5,
	OtherField2,
	OtherField4,
	OtherField3
)
ON (Target.Id = Source.OtherId)

WHEN NOT MATCHED THEN
INSERT
(
	Id,
	Field1,
	Field2,
	Field3,
	Field4,
	Field5
)
VALUES
(
	Source.OtherId,
	Source.OtherField1,
	Source.OtherField5,
	Source.OtherField2,
	Source.OtherField4,
	Source.OtherField3
)

-- Informix.DB2 Informix

SELECT
	t1.Id,
	t1.Field1,
	t1.Field2,
	t1.Field3,
	t1.Field4,
	t1.Field5
FROM
	TestMerge1 t1
ORDER BY
	t1.Id

