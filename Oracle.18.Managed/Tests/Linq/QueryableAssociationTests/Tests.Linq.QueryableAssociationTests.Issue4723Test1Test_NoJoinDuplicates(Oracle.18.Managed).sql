BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Issue4723Table1"';
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
		CREATE TABLE "Issue4723Table1"
		(
			"Id"               Int          NOT NULL,
			"ExpressionMethod" VarChar(255)     NULL
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

INSERT ALL
	INTO "Issue4723Table1" ("Id", "ExpressionMethod") VALUES (1,NULL)
SELECT * FROM dual

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Issue4723Table2"';
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
		CREATE TABLE "Issue4723Table2"
		(
			"Id"    Int          NOT NULL,
			"Value" VarChar(255)     NULL
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

INSERT ALL
	INTO "Issue4723Table2" ("Id", "Value") VALUES (1,'Value 1')
	INTO "Issue4723Table2" ("Id", "Value") VALUES (1,'Value 1')
	INTO "Issue4723Table2" ("Id", "Value") VALUES (2,'Value 2')
SELECT * FROM dual

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	x."Id",
	t1."Association"
FROM
	"Issue4723Table1" x
		OUTER APPLY (
			SELECT
				a_Association."Value" as "Association"
			FROM
				"Issue4723Table2" a_Association
			WHERE
				a_Association."Id" = x."Id"
			FETCH NEXT 1 ROWS ONLY
		) t1
WHERE
	t1."Association" IS NOT NULL AND (t1."Association" <> 'unknown' OR t1."Association" IS NULL)

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Issue4723Table2"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Issue4723Table1"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

