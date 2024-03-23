BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "TableToInsert"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE '
		CREATE TABLE "TableToInsert"
		(
			"Id"    Int          NOT NULL,
			"Value" VarChar(255)     NULL,

			CONSTRAINT "PK_TableToInsert" PRIMARY KEY ("Id")
		)
	';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -955 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

INSERT INTO "TableToInsert"
(
	"Id",
	"Value"
)
SELECT
	t1."Id",
	t1."Value"
FROM
	(
		SELECT 3 AS "Id", 'Janet' AS "Value" FROM sys.dual
		UNION ALL
		SELECT 4, 'Doe' FROM sys.dual) t1
		LEFT JOIN "TableToInsert" t ON t."Id" = t1."Id"
WHERE
	t."Id" IS NULL

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

INSERT INTO "TableToInsert"
(
	"Id",
	"Value"
)
SELECT
	t1."Id",
	t1."Value"
FROM
	(
		SELECT 3 AS "Id", 'Janet' AS "Value" FROM sys.dual
		UNION ALL
		SELECT 4, 'Doe' FROM sys.dual) t1
		LEFT JOIN "TableToInsert" t ON t."Id" = t1."Id"
WHERE
	t."Id" IS NULL

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "TableToInsert"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

