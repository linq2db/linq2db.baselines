BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

CREATE TABLE "TableToInsert"
(
	"Id"    Int          NOT NULL,
	"Value" VarChar(255)     NULL,

	CONSTRAINT "PK_TableToInsert" PRIMARY KEY ("Id")
)

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT
	t."Id",
	t."Value"
FROM
	"TableToInsert" t
		INNER JOIN (SELECT NULL"Id", NULL"Value" FROM sys.dual WHERE 1 = 0) r ON t."Id" = r."Id" AND (t."Value" = r."Value" OR t."Value" IS NULL AND r."Value" IS NULL)

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "TableToInsert"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

