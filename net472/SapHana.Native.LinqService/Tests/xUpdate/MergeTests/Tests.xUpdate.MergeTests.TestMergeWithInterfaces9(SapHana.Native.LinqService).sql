BeforeExecute
-- SapHana.Native SapHana

CREATE COLUMN TABLE "ReviewIndexes"
(
	"Id"    Integer       NOT NULL,
	"Value" NVarChar(255)     NULL,

	PRIMARY KEY ("Id")
)

BeforeExecute
-- SapHana.Native SapHana

MERGE INTO "ReviewIndexes" "Target"
USING (	SELECT 1 "Id", '2' "Value_1" FROM DUMMY) "Source"
ON ("Target"."Id" = "Source"."Id")

WHEN MATCHED AND "Target"."Id" <> "Source"."Id" THEN
UPDATE
SET
	"Target"."Value" = "Source"."Value_1"

BeforeExecute
-- SapHana.Native SapHana

DROP TABLE "ReviewIndexes"

