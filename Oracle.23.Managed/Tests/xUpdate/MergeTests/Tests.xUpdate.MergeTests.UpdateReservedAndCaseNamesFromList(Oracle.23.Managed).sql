BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

DELETE FROM
	"TestMerge1" t1

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Field1 Int32
SET     @Field1 = NULL
DECLARE @Field2 Int32
SET     @Field2 = NULL
DECLARE @Field4 Int32
SET     @Field4 = NULL

INSERT INTO "TestMerge1"
(
	"Id",
	"Field1",
	"Field2",
	"Field4"
)
VALUES
(
	:Id,
	:Field1,
	:Field2,
	:Field4
)

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 2
DECLARE @Field1 Int32
SET     @Field1 = 2
DECLARE @Field2 Int32
SET     @Field2 = NULL
DECLARE @Field4 Int32
SET     @Field4 = NULL

INSERT INTO "TestMerge1"
(
	"Id",
	"Field1",
	"Field2",
	"Field4"
)
VALUES
(
	:Id,
	:Field1,
	:Field2,
	:Field4
)

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 3
DECLARE @Field1 Int32
SET     @Field1 = NULL
DECLARE @Field2 Int32
SET     @Field2 = 3
DECLARE @Field4 Int32
SET     @Field4 = 203

INSERT INTO "TestMerge1"
(
	"Id",
	"Field1",
	"Field2",
	"Field4"
)
VALUES
(
	:Id,
	:Field1,
	:Field2,
	:Field4
)

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 4
DECLARE @Field1 Int32
SET     @Field1 = 5
DECLARE @Field2 Int32
SET     @Field2 = 6
DECLARE @Field4 Int32
SET     @Field4 = NULL

INSERT INTO "TestMerge1"
(
	"Id",
	"Field1",
	"Field2",
	"Field4"
)
VALUES
(
	:Id,
	:Field1,
	:Field2,
	:Field4
)

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

DELETE FROM
	"TestMerge2" t1

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 3
DECLARE @Field1 Int32
SET     @Field1 = NULL
DECLARE @Field2 Int32
SET     @Field2 = 3
DECLARE @Field4 Int32
SET     @Field4 = NULL

INSERT INTO "TestMerge2"
(
	"Id",
	"Field1",
	"Field2",
	"Field4"
)
VALUES
(
	:Id,
	:Field1,
	:Field2,
	:Field4
)

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 4
DECLARE @Field1 Int32
SET     @Field1 = 5
DECLARE @Field2 Int32
SET     @Field2 = 7
DECLARE @Field4 Int32
SET     @Field4 = 214

INSERT INTO "TestMerge2"
(
	"Id",
	"Field1",
	"Field2",
	"Field4"
)
VALUES
(
	:Id,
	:Field1,
	:Field2,
	:Field4
)

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 5
DECLARE @Field1 Int32
SET     @Field1 = 10
DECLARE @Field2 Int32
SET     @Field2 = 4
DECLARE @Field4 Int32
SET     @Field4 = NULL

INSERT INTO "TestMerge2"
(
	"Id",
	"Field1",
	"Field2",
	"Field4"
)
VALUES
(
	:Id,
	:Field1,
	:Field2,
	:Field4
)

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 6
DECLARE @Field1 Int32
SET     @Field1 = NULL
DECLARE @Field2 Int32
SET     @Field2 = NULL
DECLARE @Field4 Int32
SET     @Field4 = 216

INSERT INTO "TestMerge2"
(
	"Id",
	"Field1",
	"Field2",
	"Field4"
)
VALUES
(
	:Id,
	:Field1,
	:Field2,
	:Field4
)

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1."Field1",
	t1."Field2",
	t1."Field3",
	t1."Field4",
	t1."Field5"
FROM
	"TestMerge2" t1

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

MERGE INTO "TestMerge1" Target
USING (
	SELECT 3 AS "in_1", NULL AS "join_1", 3 AS "outer_1", NULL AS "inner_1", NULL AS "with_1", NULL AS "left_1" FROM sys.dual
	UNION ALL
	SELECT 4, 5, 7, NULL, 214, NULL FROM sys.dual
	UNION ALL
	SELECT 5, 10, 4, NULL, NULL, NULL FROM sys.dual
	UNION ALL
	SELECT 6, NULL, NULL, NULL, 216, NULL FROM sys.dual) "Source"
ON (Target."Id" = "Source"."in_1")

WHEN MATCHED THEN
UPDATE
SET
	"Field1" = "Source"."join_1",
	"Field2" = "Source"."outer_1",
	"Field3" = "Source"."inner_1",
	"Field4" = "Source"."with_1",
	"Field5" = "Source"."left_1"
WHERE
	"Source"."with_1" = 214

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1."Field1",
	t1."Field2",
	t1."Field3",
	t1."Field4",
	t1."Field5"
FROM
	"TestMerge1" t1
ORDER BY
	t1."Id"

