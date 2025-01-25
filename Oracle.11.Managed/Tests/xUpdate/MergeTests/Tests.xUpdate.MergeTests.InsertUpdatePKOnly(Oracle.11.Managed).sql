BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "PKOnlyTable"';
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
		CREATE TABLE "PKOnlyTable"
		(
			ID Int NOT NULL,

			CONSTRAINT "PK_PKOnlyTable" PRIMARY KEY (ID)
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
	INTO "PKOnlyTable" (ID) VALUES (2)
SELECT * FROM dual

BeforeExecute
-- Oracle.11.Managed Oracle11

MERGE INTO "PKOnlyTable" Target
USING (
	SELECT 1 AS "source_ID" FROM sys.dual
	UNION ALL
	SELECT 2 FROM sys.dual
	UNION ALL
	SELECT 3 FROM sys.dual) "Source"
ON (Target.ID = "Source"."source_ID")

WHEN NOT MATCHED THEN
INSERT
(
	ID
)
VALUES
(
	"Source"."source_ID"
)

BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	t1.ID
FROM
	"PKOnlyTable" t1
ORDER BY
	t1.ID

BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "PKOnlyTable"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

