BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Issue4723Table1"';
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
-- Oracle.11.Managed Oracle11

INSERT ALL
	INTO "Issue4723Table1" ("Id", "ExpressionMethod") VALUES (1,NULL)
SELECT * FROM dual

BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Issue4723Table2"';
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
-- Oracle.11.Managed Oracle11

INSERT ALL
	INTO "Issue4723Table2" ("Id", "Value") VALUES (1,'Value 1')
	INTO "Issue4723Table2" ("Id", "Value") VALUES (1,'Value 1')
	INTO "Issue4723Table2" ("Id", "Value") VALUES (2,'Value 2')
SELECT * FROM dual

BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	x."Id",
	t1."Association"
FROM
	"Issue4723Table1" x
		LEFT JOIN (
			SELECT
				a_Association."Value" as "Association",
				ROW_NUMBER() OVER (PARTITION BY a_Association."Id" ORDER BY a_Association."Id") as "rn",
				a_Association."Id"
			FROM
				"Issue4723Table2" a_Association
		) t1 ON t1."Id" = x."Id" AND t1."rn" <= 1
WHERE
	t1."Association" IS NOT NULL AND (t1."Association" <> 'unknown' OR t1."Association" IS NULL)

BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Issue4723Table2"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Issue4723Table1"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

