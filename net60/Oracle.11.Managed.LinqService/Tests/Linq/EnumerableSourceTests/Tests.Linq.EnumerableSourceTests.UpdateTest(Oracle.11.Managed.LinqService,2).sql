﻿BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "TableToInsert"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

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
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @Id Int32
SET     @Id = 3
DECLARE @Value_1 Varchar2(5) -- String
SET     @Value_1 = 'Janet'

INSERT INTO "TableToInsert"
(
	"Id",
	"Value"
)
VALUES
(
	:Id,
	:Value_1
)

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @Id Int32
SET     @Id = 4
DECLARE @Value_1 Varchar2(3) -- String
SET     @Value_1 = 'Doe'

INSERT INTO "TableToInsert"
(
	"Id",
	"Value"
)
VALUES
(
	:Id,
	:Value_1
)

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

UPDATE
	"TableToInsert"
SET
	"TableToInsert"."Value" = (
		SELECT
			r."Value"
		FROM
			"TableToInsert" t
				INNER JOIN (
					SELECT 3 AS "Id", 'Janet Updated' AS "Value" FROM sys.dual
					UNION ALL
					SELECT 4, 'Doe Updated' FROM sys.dual) r ON t."Id" = r."Id"
		WHERE
			"TableToInsert"."Id" = t."Id"
	)
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"TableToInsert" t_1
				INNER JOIN (
					SELECT 3 AS "Id", 'Janet Updated' AS "Value" FROM sys.dual
					UNION ALL
					SELECT 4, 'Doe Updated' FROM sys.dual) r_1 ON t_1."Id" = r_1."Id"
		WHERE
			"TableToInsert"."Id" = t_1."Id"
	)

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT
	t1."Id",
	t1."Value"
FROM
	"TableToInsert" t1

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

