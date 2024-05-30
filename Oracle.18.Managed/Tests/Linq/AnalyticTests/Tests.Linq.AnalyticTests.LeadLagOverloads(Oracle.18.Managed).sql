BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Issue1799Table3"';
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
		CREATE TABLE "Issue1799Table3"
		(
			"ProcessID"   Int          NOT NULL,
			"ProcessName" VarChar(255)     NULL
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
	INTO "Issue1799Table3" ("ProcessID", "ProcessName") VALUES (1,'One')
	INTO "Issue1799Table3" ("ProcessID", "ProcessName") VALUES (2,'Two')
	INTO "Issue1799Table3" ("ProcessID", "ProcessName") VALUES (3,'Three')
	INTO "Issue1799Table3" ("ProcessID", "ProcessName") VALUES (4,'Four')
SELECT * FROM dual

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	LEAD(p."ProcessName", 2) OVER(ORDER BY p."ProcessID")
FROM
	"Issue1799Table3" p

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	LEAD(p."ProcessName") OVER(ORDER BY p."ProcessID")
FROM
	"Issue1799Table3" p

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	LAG(p."ProcessName", 2) OVER(ORDER BY p."ProcessID")
FROM
	"Issue1799Table3" p

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	LAG(p."ProcessName") OVER(ORDER BY p."ProcessID")
FROM
	"Issue1799Table3" p

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Issue1799Table3"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

