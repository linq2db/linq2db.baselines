BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "BaseTable"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE '
		CREATE TABLE "BaseTable"
		(
			"Id"    Int NOT NULL,
			"Value" Int NOT NULL,

			CONSTRAINT "PK_BaseTable" PRIMARY KEY ("Id")
		)
	';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -955 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

INSERT ALL
	INTO "BaseTable" ("Id", "Value") VALUES (1,100)
SELECT * FROM dual

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	x."Id",
	x."Value" as "BaseValue"
FROM
	"BaseTable" x
WHERE
	x."Id" = 1
FETCH NEXT 1 ROWS ONLY

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	x."Id",
	x."Value" as "BaseValue"
FROM
	"BaseTable" x
WHERE
	x."Id" = 1 AND x."Value" = 100
FETCH NEXT 1 ROWS ONLY

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "BaseTable"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

