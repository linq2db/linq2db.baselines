BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "TrimTestTable"';
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
		CREATE TABLE "TrimTestTable"
		(
			ID     Int         NOT NULL,
			"Data" VarChar(50)     NULL,

			CONSTRAINT "PK_TrimTestTable" PRIMARY KEY (ID)
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
	INTO "TrimTestTable" (ID, "Data") VALUES (1,'***XXX***')
	INTO "TrimTestTable" (ID, "Data") VALUES (3,'***VVV***')
SELECT * FROM dual

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

MERGE INTO "TrimTestTable" Target
USING (
	SELECT 1 AS "source_ID", '***OOO***' AS "source_Data" FROM sys.dual
	UNION ALL
	SELECT 2, '***SSS***' FROM sys.dual) "Source"
ON (Target.ID = "Source"."source_ID")

WHEN MATCHED THEN
UPDATE
SET
	"Data" = "Source"."source_Data"

WHEN NOT MATCHED THEN
INSERT
(
	ID,
	"Data"
)
VALUES
(
	"Source"."source_ID",
	"Source"."source_Data"
)

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

MERGE INTO "TrimTestTable" Target
USING (
	SELECT 3 AS "source_ID", '***III***' AS "source_Data" FROM sys.dual) "Source"
ON (Target.ID = "Source"."source_ID")

WHEN MATCHED THEN
UPDATE
SET
	"Data" = "Source"."source_Data"

WHEN NOT MATCHED THEN
INSERT
(
	ID,
	"Data"
)
VALUES
(
	"Source"."source_ID",
	"Source"."source_Data"
)

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	r.ID,
	r."Data"
FROM
	"TrimTestTable" r
ORDER BY
	r.ID

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	r.ID,
	r."Data"
FROM
	"TrimTestTable" r
ORDER BY
	r.ID

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "TrimTestTable"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

