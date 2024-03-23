BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

DELETE FROM
	"TestMerge1" t1

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

MERGE INTO "TestMerge1" Target
USING (
	SELECT 0 AS "source_Id", 1 AS "source_Field1", 2 AS "source_Field2", 4 AS "source_Field4" FROM sys.dual) "Source"
ON (Target."Id" = "Source"."source_Id")

WHEN NOT MATCHED THEN
INSERT
(
	"Id",
	"Field1",
	"Field2",
	"Field4"
)
VALUES
(
	"Source"."source_Id",
	"Source"."source_Field1",
	"Source"."source_Field2",
	"Source"."source_Field4"
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
	"TestMerge1" t1
ORDER BY
	t1."Id"

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

DELETE FROM
	"TestMerge1" t1

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

MERGE INTO "TestMerge1" Target
USING (
	SELECT 10 AS "source_Id", 11 AS "source_Field1", 12 AS "source_Field2", 14 AS "source_Field4" FROM sys.dual) "Source"
ON (Target."Id" = "Source"."source_Id")

WHEN NOT MATCHED THEN
INSERT
(
	"Id",
	"Field1",
	"Field2",
	"Field4"
)
VALUES
(
	"Source"."source_Id",
	"Source"."source_Field1",
	"Source"."source_Field2",
	"Source"."source_Field4"
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
	"TestMerge1" t1
ORDER BY
	t1."Id"

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

DELETE FROM
	"TestMerge1" t1

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

MERGE INTO "TestMerge1" Target
USING (
	SELECT 20 AS "source_Id", 21 AS "source_Field1", 22 AS "source_Field2", 24 AS "source_Field4" FROM sys.dual
	UNION ALL
	SELECT 30, 31, 32, 34 FROM sys.dual) "Source"
ON (Target."Id" = "Source"."source_Id")

WHEN NOT MATCHED THEN
INSERT
(
	"Id",
	"Field1",
	"Field2",
	"Field4"
)
VALUES
(
	"Source"."source_Id",
	"Source"."source_Field1",
	"Source"."source_Field2",
	"Source"."source_Field4"
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
	"TestMerge1" t1
ORDER BY
	t1."Id"

