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
USING (	SELECT 1 "Id" FROM DUMMY) "Source"
ON ("Target"."Id" = "Source"."Id")
WHEN MATCHED AND "Target"."Id" = "Source"."Id" THEN DELETE

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "ReviewIndexes"

