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
USING (	SELECT 1 "Id", '2' "Value_1" FROM sys.dual) "Source"
ON (Target."Id" = "Source"."Id")

WHEN MATCHED THEN
UPDATE
SET
	Target."Value" = "Source"."Value_1"

DELETE WHERE
	Target."Id" <> "Source"."Id"

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

DROP TABLE "ReviewIndexes"

