BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

DELETE FROM
	TestMerge1 t1

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
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
-- Oracle.11.Managed Oracle.Managed Oracle11
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
-- Oracle.11.Managed Oracle.Managed Oracle11
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
-- Oracle.11.Managed Oracle.Managed Oracle11
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
-- Oracle.11.Managed Oracle.Managed Oracle11

DELETE FROM
	TestMerge2 t1

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
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
-- Oracle.11.Managed Oracle.Managed Oracle11
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
-- Oracle.11.Managed Oracle.Managed Oracle11
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
-- Oracle.11.Managed Oracle.Managed Oracle11
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
-- Oracle.11.Managed Oracle.Managed Oracle11

MERGE INTO TestMerge1 Target
USING (	SELECT 5 Id,6 Field1,7 Field2,9 Field4 FROM sys.dual
	UNION ALL
	SELECT 6,7,8,10 FROM sys.dual
	UNION ALL
	SELECT 7,8,9,11 FROM sys.dual
	UNION ALL
	SELECT 8,9,10,12 FROM sys.dual
	UNION ALL
	SELECT 9,10,11,13 FROM sys.dual
	UNION ALL
	SELECT 10,11,12,14 FROM sys.dual
	UNION ALL
	SELECT 11,12,13,15 FROM sys.dual
	UNION ALL
	SELECT 12,13,14,16 FROM sys.dual
	UNION ALL
	SELECT 13,14,15,17 FROM sys.dual
	UNION ALL
	SELECT 14,15,16,18 FROM sys.dual
	UNION ALL
	SELECT 15,16,17,19 FROM sys.dual
	UNION ALL
	SELECT 16,17,18,20 FROM sys.dual
	UNION ALL
	SELECT 17,18,19,21 FROM sys.dual
	UNION ALL
	SELECT 18,19,20,22 FROM sys.dual
	UNION ALL
	SELECT 19,20,21,23 FROM sys.dual
	UNION ALL
	SELECT 20,21,22,24 FROM sys.dual
	UNION ALL
	SELECT 21,22,23,25 FROM sys.dual
	UNION ALL
	SELECT 22,23,24,26 FROM sys.dual
	UNION ALL
	SELECT 23,24,25,27 FROM sys.dual
	UNION ALL
	SELECT 24,25,26,28 FROM sys.dual
	UNION ALL
	SELECT 25,26,27,29 FROM sys.dual
	UNION ALL
	SELECT 26,27,28,30 FROM sys.dual
	UNION ALL
	SELECT 27,28,29,31 FROM sys.dual
	UNION ALL
	SELECT 28,29,30,32 FROM sys.dual
	UNION ALL
	SELECT 29,30,31,33 FROM sys.dual
	UNION ALL
	SELECT 30,31,32,34 FROM sys.dual
	UNION ALL
	SELECT 31,32,33,35 FROM sys.dual
	UNION ALL
	SELECT 32,33,34,36 FROM sys.dual
	UNION ALL
	SELECT 33,34,35,37 FROM sys.dual
	UNION ALL
	SELECT 34,35,36,38 FROM sys.dual
	UNION ALL
	SELECT 35,36,37,39 FROM sys.dual
	UNION ALL
	SELECT 36,37,38,40 FROM sys.dual
	UNION ALL
	SELECT 37,38,39,41 FROM sys.dual
	UNION ALL
	SELECT 38,39,40,42 FROM sys.dual
	UNION ALL
	SELECT 39,40,41,43 FROM sys.dual
	UNION ALL
	SELECT 40,41,42,44 FROM sys.dual
	UNION ALL
	SELECT 41,42,43,45 FROM sys.dual
	UNION ALL
	SELECT 42,43,44,46 FROM sys.dual
	UNION ALL
	SELECT 43,44,45,47 FROM sys.dual
	UNION ALL
	SELECT 44,45,46,48 FROM sys.dual
	UNION ALL
	SELECT 45,46,47,49 FROM sys.dual
	UNION ALL
	SELECT 46,47,48,50 FROM sys.dual
	UNION ALL
	SELECT 47,48,49,51 FROM sys.dual
	UNION ALL
	SELECT 48,49,50,52 FROM sys.dual
	UNION ALL
	SELECT 49,50,51,53 FROM sys.dual
	UNION ALL
	SELECT 50,51,52,54 FROM sys.dual
	UNION ALL
	SELECT 51,52,53,55 FROM sys.dual
	UNION ALL
	SELECT 52,53,54,56 FROM sys.dual
	UNION ALL
	SELECT 53,54,55,57 FROM sys.dual
	UNION ALL
	SELECT 54,55,56,58 FROM sys.dual
	UNION ALL
	SELECT 55,56,57,59 FROM sys.dual
	UNION ALL
	SELECT 56,57,58,60 FROM sys.dual
	UNION ALL
	SELECT 57,58,59,61 FROM sys.dual
	UNION ALL
	SELECT 58,59,60,62 FROM sys.dual
	UNION ALL
	SELECT 59,60,61,63 FROM sys.dual
	UNION ALL
	SELECT 60,61,62,64 FROM sys.dual
	UNION ALL
	SELECT 61,62,63,65 FROM sys.dual
	UNION ALL
	SELECT 62,63,64,66 FROM sys.dual
	UNION ALL
	SELECT 63,64,65,67 FROM sys.dual
	UNION ALL
	SELECT 64,65,66,68 FROM sys.dual
	UNION ALL
	SELECT 65,66,67,69 FROM sys.dual
	UNION ALL
	SELECT 66,67,68,70 FROM sys.dual
	UNION ALL
	SELECT 67,68,69,71 FROM sys.dual
	UNION ALL
	SELECT 68,69,70,72 FROM sys.dual
	UNION ALL
	SELECT 69,70,71,73 FROM sys.dual
	UNION ALL
	SELECT 70,71,72,74 FROM sys.dual
	UNION ALL
	SELECT 71,72,73,75 FROM sys.dual
	UNION ALL
	SELECT 72,73,74,76 FROM sys.dual
	UNION ALL
	SELECT 73,74,75,77 FROM sys.dual
	UNION ALL
	SELECT 74,75,76,78 FROM sys.dual
	UNION ALL
	SELECT 75,76,77,79 FROM sys.dual
	UNION ALL
	SELECT 76,77,78,80 FROM sys.dual
	UNION ALL
	SELECT 77,78,79,81 FROM sys.dual
	UNION ALL
	SELECT 78,79,80,82 FROM sys.dual
	UNION ALL
	SELECT 79,80,81,83 FROM sys.dual
	UNION ALL
	SELECT 80,81,82,84 FROM sys.dual
	UNION ALL
	SELECT 81,82,83,85 FROM sys.dual
	UNION ALL
	SELECT 82,83,84,86 FROM sys.dual
	UNION ALL
	SELECT 83,84,85,87 FROM sys.dual
	UNION ALL
	SELECT 84,85,86,88 FROM sys.dual
	UNION ALL
	SELECT 85,86,87,89 FROM sys.dual
	UNION ALL
	SELECT 86,87,88,90 FROM sys.dual
	UNION ALL
	SELECT 87,88,89,91 FROM sys.dual
	UNION ALL
	SELECT 88,89,90,92 FROM sys.dual
	UNION ALL
	SELECT 89,90,91,93 FROM sys.dual
	UNION ALL
	SELECT 90,91,92,94 FROM sys.dual
	UNION ALL
	SELECT 91,92,93,95 FROM sys.dual
	UNION ALL
	SELECT 92,93,94,96 FROM sys.dual
	UNION ALL
	SELECT 93,94,95,97 FROM sys.dual
	UNION ALL
	SELECT 94,95,96,98 FROM sys.dual
	UNION ALL
	SELECT 95,96,97,99 FROM sys.dual
	UNION ALL
	SELECT 96,97,98,100 FROM sys.dual
	UNION ALL
	SELECT 97,98,99,101 FROM sys.dual
	UNION ALL
	SELECT 98,99,100,102 FROM sys.dual
	UNION ALL
	SELECT 99,100,101,103 FROM sys.dual
	UNION ALL
	SELECT 100,101,102,104 FROM sys.dual
	UNION ALL
	SELECT 101,102,103,105 FROM sys.dual
	UNION ALL
	SELECT 102,103,104,106 FROM sys.dual
	UNION ALL
	SELECT 103,104,105,107 FROM sys.dual
	UNION ALL
	SELECT 104,105,106,108 FROM sys.dual) Source
ON (Target.Id = Source.Id)

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
	Source.Id,
	Source.Field1,
	Source.Field2,
	Source.Field4
)

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

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

