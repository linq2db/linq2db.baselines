BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "ReviewIndexes"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

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
-- Oracle.23.Managed Oracle.Managed Oracle12

MERGE INTO "ReviewIndexes" Target
USING (
	SELECT
		t1."Id" as "source_Id",
		t1."Value" as "source_Value"
	FROM
		"ReviewIndexes" t1
) "Source"
ON (Target."Id" = "Source"."source_Id")

WHEN MATCHED THEN
UPDATE
SET
	"Value" = "Source"."source_Value"

WHEN NOT MATCHED THEN
INSERT
(
	"Id",
	"Value"
)
VALUES
(
	"Source"."source_Id",
	"Source"."source_Value"
)

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "ReviewIndexes"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

