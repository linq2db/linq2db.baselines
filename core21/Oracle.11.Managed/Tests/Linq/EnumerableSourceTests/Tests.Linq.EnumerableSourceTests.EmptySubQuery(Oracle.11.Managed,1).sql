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
WHERE
	EXISTS(
		SELECT
			*
		FROM
			(SELECT NULL"Id", NULL"Value" FROM sys.dual WHERE 1 = 0) t1
		WHERE
			t."Id" = t1."Id" AND (t."Value" = t1."Value" OR t."Value" IS NULL AND t1."Value" IS NULL)
	)

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

