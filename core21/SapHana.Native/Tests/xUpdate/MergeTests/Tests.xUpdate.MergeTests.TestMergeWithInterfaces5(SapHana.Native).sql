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
USING (
	SELECT
		"t1"."Id",
		"t1"."Value" as "Value_1"
	FROM
		"ReviewIndexes" "t1"
) "Source"
ON ("Target"."Id" = "Source"."Id")

WHEN MATCHED THEN
UPDATE
SET
	"Target"."Value" = "Source"."Value_1"

WHEN NOT MATCHED THEN
INSERT
(
	"Id",
	"Value"
)
VALUES
(
	"Source"."Id",
	"Source"."Value_1"
)

BeforeExecute
-- SapHana.Native SapHana

DROP TABLE "ReviewIndexes"

