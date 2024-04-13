﻿BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "ReviewIndexes"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "ReviewIndexes"
(
	"Id"    Integer       NOT NULL,
	"Value" NVarChar(255)     NULL,

	PRIMARY KEY ("Id")
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

MERGE INTO "ReviewIndexes" "Target"
USING (
	SELECT
		"t1"."Id" as "source_Id",
		"t1"."Value" as "source_Value"
	FROM
		"ReviewIndexes" "t1"
) "Source"
ON ("Target"."Id" = "Source"."source_Id")

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
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "ReviewIndexes"

