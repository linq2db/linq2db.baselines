-- Oracle.11.Managed Oracle11

MERGE INTO "CacheTestTable" Target
USING (
	SELECT 1 AS "Id", 1 AS "Value_1" FROM sys.dual
	UNION ALL
	SELECT 2, 2 FROM sys.dual) "Source"
ON (Target."Id" = "Source"."Id")

WHEN MATCHED THEN
UPDATE
SET
	"Value" = "Source"."Value_1"

WHEN NOT MATCHED THEN
INSERT
(
	"Id",
	"Value"
)
VALUES
(
	"Source"."Id",
	"Source"."Value_1"
)

-- Oracle.11.Managed Oracle11

SELECT
	t1."Id",
	t1."Value"
FROM
	"CacheTestTable" t1
ORDER BY
	t1."Id"

-- Oracle.11.Managed Oracle11

MERGE INTO "CacheTestTable" Target
USING (
	SELECT 1 AS "Id", 1 AS "Value_1" FROM sys.dual
	UNION ALL
	SELECT 2, 4 FROM sys.dual
	UNION ALL
	SELECT 3, 3 FROM sys.dual) "Source"
ON (Target."Id" = "Source"."Id")

WHEN MATCHED THEN
UPDATE
SET
	"Value" = "Source"."Value_1"

WHEN NOT MATCHED THEN
INSERT
(
	"Id",
	"Value"
)
VALUES
(
	"Source"."Id",
	"Source"."Value_1"
)

-- Oracle.11.Managed Oracle11

SELECT
	t1."Id",
	t1."Value"
FROM
	"CacheTestTable" t1
ORDER BY
	t1."Id"

