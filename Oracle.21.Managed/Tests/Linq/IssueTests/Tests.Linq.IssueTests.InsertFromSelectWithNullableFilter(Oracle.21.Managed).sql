BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "InsertIssueTest"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE '
		CREATE TABLE "InsertIssueTest"
		(
			ID            SmallInt NOT NULL,
			"intDataType" Int          NULL
		)
	';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -955 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

INSERT ALL
	INTO "InsertIssueTest" (ID, "intDataType") VALUES (0,0)
	INTO "InsertIssueTest" (ID, "intDataType") VALUES (0,0)
	INTO "InsertIssueTest" (ID, "intDataType") VALUES (1234,1234)
	INTO "InsertIssueTest" (ID, "intDataType") VALUES (1234,1234)
SELECT * FROM dual

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

INSERT INTO "InsertIssueTest"
(
	ID,
	"intDataType"
)
SELECT
	123,
	CAST(t2.ID AS Int)
FROM
	(
		SELECT DISTINCT
			a_Association.ID
		FROM
			"InsertIssueTest" t1
				INNER JOIN "InsertIssueTest" a_Association ON t1.ID = a_Association."intDataType" AND a_Association."intDataType" IS NOT NULL
		WHERE
			1 = 0
	) t2

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @cond Int16
SET     @cond = 1234

INSERT INTO "InsertIssueTest"
(
	ID,
	"intDataType"
)
SELECT
	123,
	CAST(t2.ID AS Int)
FROM
	(
		SELECT DISTINCT
			a_Association.ID
		FROM
			"InsertIssueTest" t1
				INNER JOIN "InsertIssueTest" a_Association ON t1.ID = a_Association."intDataType" AND a_Association."intDataType" IS NOT NULL
		WHERE
			CAST(t1.ID AS Int) = :cond
	) t2

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	t1.ID,
	t1."intDataType"
FROM
	"InsertIssueTest" t1

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "InsertIssueTest"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

