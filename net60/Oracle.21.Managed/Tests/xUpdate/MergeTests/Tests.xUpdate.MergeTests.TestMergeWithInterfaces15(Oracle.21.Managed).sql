BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "ReviewIndexes"';
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
-- Oracle.21.Managed Oracle.Managed Oracle12

MERGE INTO "ReviewIndexes" Target
USING
(
	SELECT 1 AS "Id", '2' AS "Value_1" FROM sys.dual) "Source"
ON (Target."Id" = "Source"."Id")

WHEN MATCHED THEN
UPDATE
SET
	Target."Value" = '3'
WHERE
	(Target."Value" <> "Source"."Value_1" OR Target."Value" IS NULL AND "Source"."Value_1" IS NOT NULL OR Target."Value" IS NOT NULL AND "Source"."Value_1" IS NULL)
DELETE WHERE
	(Target."Value" <> "Source"."Value_1" OR Target."Value" IS NULL AND "Source"."Value_1" IS NOT NULL OR Target."Value" IS NOT NULL AND "Source"."Value_1" IS NULL)

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "ReviewIndexes"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

