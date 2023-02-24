BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Issue1799Table3"';
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
-- Oracle.12.Managed Oracle.Managed Oracle12
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
-- Oracle.12.Managed Oracle.Managed Oracle12
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
-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @ProcessID Int32
SET     @ProcessID = 3
DECLARE @ProcessName Varchar2(5) -- String
SET     @ProcessName = 'Three'

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
-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @ProcessID Int32
SET     @ProcessID = 4
DECLARE @ProcessName Varchar2(4) -- String
SET     @ProcessName = 'Four'

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
-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	LEAD(p."ProcessName", 2) OVER(ORDER BY p."ProcessID")
FROM
	"Issue1799Table3" p

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	LEAD(p."ProcessName") OVER(ORDER BY p."ProcessID")
FROM
	"Issue1799Table3" p

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	LAG(p."ProcessName", 2) OVER(ORDER BY p."ProcessID")
FROM
	"Issue1799Table3" p

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	LAG(p."ProcessName") OVER(ORDER BY p."ProcessID")
FROM
	"Issue1799Table3" p

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Issue1799Table3"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

