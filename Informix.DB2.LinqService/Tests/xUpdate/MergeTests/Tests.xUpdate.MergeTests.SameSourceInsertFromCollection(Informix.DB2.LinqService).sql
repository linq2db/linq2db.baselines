﻿BeforeExecute
-- Informix.DB2 Informix

DELETE FROM
	TestMerge1

BeforeExecute
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

BeforeExecute
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

BeforeExecute
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

BeforeExecute
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

BeforeExecute
-- Informix.DB2 Informix

DELETE FROM
	TestMerge2

BeforeExecute
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

BeforeExecute
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

BeforeExecute
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

BeforeExecute
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

BeforeExecute
-- Informix.DB2 Informix

MERGE INTO TestMerge1 Target
USING (
	SELECT 3::Int AS source_Id, NULL::Int AS source_Field1, 3::Int AS source_Field2, NULL::Int AS source_Field4 FROM table(set{1})
	UNION ALL
	SELECT 4::Int, 5::Int, 7::Int, 214::Int FROM table(set{1})
	UNION ALL
	SELECT 5::Int, 10::Int, 4::Int, NULL::Int FROM table(set{1})
	UNION ALL
	SELECT 6::Int, NULL::Int, NULL::Int, 216::Int FROM table(set{1})) Source
(
	source_Id,
	source_Field1,
	source_Field2,
	source_Field4
)
ON (Target.Id = Source.source_Id)

WHEN NOT MATCHED THEN
INSERT
(
	Id,
	Field1,
	Field2,
	Field4
)
VALUES
(
	Source.source_Id,
	Source.source_Field1,
	Source.source_Field2,
	Source.source_Field4
)

BeforeExecute
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

