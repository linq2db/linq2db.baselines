BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "TableToInsert"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

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
-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 3
DECLARE @Value Varchar2(5) -- String
SET     @Value = 'Janet'

INSERT INTO "TableToInsert"
(
	"Id",
	"Value"
)
VALUES
(
	:Id,
	:Value
)

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 4
DECLARE @Value Varchar2(3) -- String
SET     @Value = 'Doe'

INSERT INTO "TableToInsert"
(
	"Id",
	"Value"
)
VALUES
(
	:Id,
	:Value
)

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

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
			(
				SELECT 3 AS "Id", 'Janet' AS "Value" FROM sys.dual
				UNION ALL
				SELECT 4, 'Doe' FROM sys.dual) r
		WHERE
			t."Id" = r."Id" AND (t."Value" = r."Value" AND t."Value" IS NOT NULL AND r."Value" IS NOT NULL OR t."Value" IS NULL AND r."Value" IS NULL)
	)

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1."Value"
FROM
	"TableToInsert" t1

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "TableToInsert"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

