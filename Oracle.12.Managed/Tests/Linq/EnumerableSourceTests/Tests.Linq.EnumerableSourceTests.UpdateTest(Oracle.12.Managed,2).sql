BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "TableToInsert"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

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
-- Oracle.12.Managed Oracle.Managed Oracle12

INSERT ALL
	INTO "TableToInsert" ("Id", "Value") VALUES (3,'Janet')
	INTO "TableToInsert" ("Id", "Value") VALUES (4,'Doe')
SELECT * FROM dual

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

UPDATE
	"TableToInsert"
SET
	"Value" = (
		SELECT
			r_1."Value"
		FROM
			"TableToInsert" t_1
				INNER JOIN (
					SELECT 3 AS "Id", 'Janet Updated' AS "Value" FROM sys.dual
					UNION ALL
					SELECT 4, 'Doe Updated' FROM sys.dual) r_1 ON t_1."Id" = r_1."Id"
		WHERE
			"TableToInsert"."Id" = t_1."Id"
	)
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"TableToInsert" t
				INNER JOIN (
					SELECT 3 AS "Id", 'Janet Updated' AS "Value" FROM sys.dual
					UNION ALL
					SELECT 4, 'Doe Updated' FROM sys.dual) r ON t."Id" = r."Id"
		WHERE
			"TableToInsert"."Id" = t."Id"
	)

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1."Value"
FROM
	"TableToInsert" t1

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "TableToInsert"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

