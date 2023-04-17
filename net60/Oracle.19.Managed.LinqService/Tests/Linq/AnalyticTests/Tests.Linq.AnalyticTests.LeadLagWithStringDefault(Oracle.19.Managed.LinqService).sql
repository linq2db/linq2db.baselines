BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Issue1799Table3"';
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
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @ProcessID Int32
SET     @ProcessID = 1
DECLARE @ProcessName Varchar2(3) -- String
SET     @ProcessName = 'One'

INSERT INTO "Issue1799Table3"
(
	"ProcessID",
	"ProcessName"
)
VALUES
(
	:ProcessID,
	:ProcessName
)

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @ProcessID Int32
SET     @ProcessID = 2
DECLARE @ProcessName Varchar2(3) -- String
SET     @ProcessName = 'Two'

INSERT INTO "Issue1799Table3"
(
	"ProcessID",
	"ProcessName"
)
VALUES
(
	:ProcessID,
	:ProcessName
)

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	LEAD(p."ProcessName", 1, 'None') OVER(ORDER BY p."ProcessID")
FROM
	"Issue1799Table3" p

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	LAG(p."ProcessName", 1, 'None') OVER(ORDER BY p."ProcessID")
FROM
	"Issue1799Table3" p

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Issue1799Table3"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

