BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

MERGE INTO "CacheTestTable" Target
USING (
	SELECT 1 AS "source_Id", 1 AS "source_Value" FROM sys.dual
	UNION ALL
	SELECT 2, 2 FROM sys.dual) "Source"
ON (Target."Id" = "Source"."source_Id")

WHEN MATCHED THEN
UPDATE
SET
	"Value" = "Source"."source_Value"

WHEN NOT MATCHED THEN
INSERT
(
	"Id",
	"Value"
)
VALUES
(
	"Source"."source_Id",
	"Source"."source_Value"
)

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1."Value"
FROM
	"CacheTestTable" t1
ORDER BY
	t1."Id"

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

MERGE INTO "CacheTestTable" Target
USING (
	SELECT 1 AS "source_Id", 1 AS "source_Value" FROM sys.dual
	UNION ALL
	SELECT 2, 4 FROM sys.dual
	UNION ALL
	SELECT 3, 3 FROM sys.dual) "Source"
ON (Target."Id" = "Source"."source_Id")

WHEN MATCHED THEN
UPDATE
SET
	"Value" = "Source"."source_Value"

WHEN NOT MATCHED THEN
INSERT
(
	"Id",
	"Value"
)
VALUES
(
	"Source"."source_Id",
	"Source"."source_Value"
)

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1."Value"
FROM
	"CacheTestTable" t1
ORDER BY
	t1."Id"

