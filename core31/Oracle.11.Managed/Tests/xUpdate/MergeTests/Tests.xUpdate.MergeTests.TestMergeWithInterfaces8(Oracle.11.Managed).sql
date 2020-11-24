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
USING (	SELECT 1 "Id" FROM sys.dual) "Source"
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
 WHERE "Source"."Id" > 1

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

DROP TABLE "ReviewIndexes"

