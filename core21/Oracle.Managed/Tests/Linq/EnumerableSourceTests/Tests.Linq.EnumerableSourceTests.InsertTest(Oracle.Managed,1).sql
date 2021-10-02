﻿BeforeExecute
-- Oracle.Managed Oracle12

CREATE TABLE "TableToInsert"
(
	"Id"    Int          NOT NULL,
	"Value" VarChar(255)     NULL,

	CONSTRAINT "PK_TableToInsert" PRIMARY KEY ("Id")
)

BeforeExecute
-- Oracle.Managed Oracle12

INSERT INTO "TableToInsert"
(
	"Id",
	"Value"
)
SELECT
	r."Id",
	r."Value"
FROM
	(
		SELECT 2 AS "Id", 'Janet' AS "Value" FROM sys.dual
		UNION ALL
		SELECT 3, 'Doe' FROM sys.dual) r
		LEFT JOIN "TableToInsert" t ON t."Id" = r."Id"
WHERE
	t."Id" IS NULL

BeforeExecute
-- Oracle.Managed Oracle12

INSERT INTO "TableToInsert"
(
	"Id",
	"Value"
)
SELECT
	r."Id",
	r."Value"
FROM
	(
		SELECT 2 AS "Id", 'Janet' AS "Value" FROM sys.dual
		UNION ALL
		SELECT 3, 'Doe' FROM sys.dual) r
		LEFT JOIN "TableToInsert" t ON t."Id" = r."Id"
WHERE
	t."Id" IS NULL

BeforeExecute
-- Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "TableToInsert"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

