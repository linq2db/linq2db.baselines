BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Table1788"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE '
		CREATE TABLE "Table1788"
		(
			"Id"     Int NOT NULL,
			"Value1" Int NOT NULL,

			CONSTRAINT "PK_Table1788" PRIMARY KEY ("Id")
		)
	';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -955 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.11.Managed Oracle11

INSERT ALL
	INTO "Table1788" ("Id", "Value1") VALUES (1,11)
	INTO "Table1788" ("Id", "Value1") VALUES (2,22)
	INTO "Table1788" ("Id", "Value1") VALUES (3,33)
SELECT * FROM dual

BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	t1."Id",
	t1."Value1"
FROM
	"Table1788" t1

BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	l."Id",
	l."Value1"
FROM
	"Table1788" p
		LEFT JOIN "Table1788" l ON l."Id" = p."Id" + 1

BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Table1788"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

