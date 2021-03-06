﻿BeforeExecute
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

WHEN NOT MATCHED AND "Source"."Id" > 1 THEN
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

