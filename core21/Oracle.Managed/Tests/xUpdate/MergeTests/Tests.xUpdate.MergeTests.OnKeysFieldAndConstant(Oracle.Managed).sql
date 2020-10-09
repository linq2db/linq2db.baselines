﻿BeforeExecute
-- Oracle.Managed Oracle12

DELETE FROM
	TestMerge1 t1

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Field1 Int32
SET     @Field1 = NULL
DECLARE @Field2 Int32
SET     @Field2 = NULL
DECLARE @Field4 Int32
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
	:Id,
	:Field1,
	:Field2,
	:Field4
)

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 2
DECLARE @Field1 Int32
SET     @Field1 = 2
DECLARE @Field2 Int32
SET     @Field2 = NULL
DECLARE @Field4 Int32
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
	:Id,
	:Field1,
	:Field2,
	:Field4
)

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 3
DECLARE @Field1 Int32
SET     @Field1 = NULL
DECLARE @Field2 Int32
SET     @Field2 = 3
DECLARE @Field4 Int32
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
	:Id,
	:Field1,
	:Field2,
	:Field4
)

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 4
DECLARE @Field1 Int32
SET     @Field1 = 5
DECLARE @Field2 Int32
SET     @Field2 = 6
DECLARE @Field4 Int32
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
	:Id,
	:Field1,
	:Field2,
	:Field4
)

BeforeExecute
-- Oracle.Managed Oracle12

DELETE FROM
	TestMerge2 t1

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 3
DECLARE @Field1 Int32
SET     @Field1 = NULL
DECLARE @Field2 Int32
SET     @Field2 = 3
DECLARE @Field4 Int32
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
	:Id,
	:Field1,
	:Field2,
	:Field4
)

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 4
DECLARE @Field1 Int32
SET     @Field1 = 5
DECLARE @Field2 Int32
SET     @Field2 = 7
DECLARE @Field4 Int32
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
	:Id,
	:Field1,
	:Field2,
	:Field4
)

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 5
DECLARE @Field1 Int32
SET     @Field1 = 10
DECLARE @Field2 Int32
SET     @Field2 = 4
DECLARE @Field4 Int32
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
	:Id,
	:Field1,
	:Field2,
	:Field4
)

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 6
DECLARE @Field1 Int32
SET     @Field1 = NULL
DECLARE @Field2 Int32
SET     @Field2 = NULL
DECLARE @Field4 Int32
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
	:Id,
	:Field1,
	:Field2,
	:Field4
)

BeforeExecute
-- Oracle.Managed Oracle12

MERGE INTO TestMerge1 Target
USING ( 
	SELECT 
		s.Field1
	FROM
		TestMerge2 s
	WHERE
		s.Field1 IS NOT NULL AND s.Field2 IS NOT NULL
) Source
ON ((Target.Field1 IS NULL AND Source.Field1 IS NULL OR Target.Field1 = Source.Field1) AND Target.Field2 = 6)

WHEN MATCHED THEN
UPDATE
SET
	Target.Field3 = 321

BeforeExecute
-- Oracle.Managed Oracle12

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

