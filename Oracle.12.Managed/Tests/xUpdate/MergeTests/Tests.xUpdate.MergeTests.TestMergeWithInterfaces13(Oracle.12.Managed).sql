BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "ReviewIndexes"';
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
		CREATE TABLE "ReviewIndexes"
		(
			"Id"    Int          NOT NULL,
			"Value" VarChar(255)     NULL,

			CONSTRAINT "PK_ReviewIndexes" PRIMARY KEY ("Id")
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

MERGE INTO "ReviewIndexes" Target
USING (
	SELECT 1 AS "source_Id", '2' AS "Value_1" FROM sys.dual) "Source"
ON (Target."Id" = "Source"."source_Id")

WHEN MATCHED THEN
UPDATE
SET
	"Value" = "Source"."Value_1"
WHERE
	Target."Id" <> "Source"."source_Id"
DELETE WHERE
	Target."Id" <> "Source"."source_Id"

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "ReviewIndexes"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

