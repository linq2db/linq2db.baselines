BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

CREATE TABLE "ReviewIndexes"
(
	"Id"    Int          NOT NULL,
	"Value" VarChar(255)     NULL,

	CONSTRAINT "PK_ReviewIndexes" PRIMARY KEY ("Id")
)

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

MERGE INTO "ReviewIndexes" Target
USING (
	SELECT 1 AS "Id" FROM sys.dual) "Source"
ON (Target."Id" = "Source"."Id")

WHEN NOT MATCHED THEN
INSERT
(
	"Id",
	"Value"
)
VALUES
(
	2,
	'3'
)

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "ReviewIndexes"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

