-- Oracle.23.Managed Oracle.Managed Oracle12

DELETE FROM
	"TestMerge1" t1

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

-- Oracle.23.Managed Oracle.Managed Oracle12

DELETE FROM
	"TestMerge2" t1

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

-- Oracle.23.Managed Oracle.Managed Oracle12

MERGE INTO "TestMerge1" Target
USING (
	SELECT
		t1."Id" as "OtherId",
		t1."Field1" as "OtherField1",
		t1."Field2" as "OtherField2",
		t1."Field3" as "OtherField3",
		t1."Field4" as "OtherField4",
		t1."Field5" as "OtherField5"
	FROM
		"TestMerge2" t1
) "Source"
ON (Target."Id" = "Source"."OtherId")

WHEN MATCHED THEN
UPDATE
SET
	"Field1" = "Source"."OtherField1",
	"Field2" = "Source"."OtherField2",
	"Field3" = "Source"."OtherField3",
	"Field4" = "Source"."OtherField4",
	"Field5" = "Source"."OtherField5"

DELETE WHERE
	"Source"."OtherId" = 4

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

