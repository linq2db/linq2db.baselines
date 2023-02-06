﻿BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "CacheTestTable"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE '
		CREATE TABLE "CacheTestTable"
		(
			"Id"    Int NOT NULL,
			"Value" Int NOT NULL,

			CONSTRAINT "PK_CacheTestTable" PRIMARY KEY ("Id")
		)
	';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -955 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

MERGE INTO "CacheTestTable" Target
USING (
	SELECT 1 AS "Id", 1 AS "Value_1" FROM sys.dual
	UNION ALL
	SELECT 2, 2 FROM sys.dual) "Source"
ON (Target."Id" = "Source"."Id")

WHEN MATCHED THEN
UPDATE
SET
	Target."Value" = "Source"."Value_1"

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
	SELECT 1 AS "Id", 1 AS "Value_1" FROM sys.dual
	UNION ALL
	SELECT 2, 4 FROM sys.dual
	UNION ALL
	SELECT 3, 3 FROM sys.dual) "Source"
ON (Target."Id" = "Source"."Id")

WHEN MATCHED THEN
UPDATE
SET
	Target."Value" = "Source"."Value_1"

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

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "CacheTestTable"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

