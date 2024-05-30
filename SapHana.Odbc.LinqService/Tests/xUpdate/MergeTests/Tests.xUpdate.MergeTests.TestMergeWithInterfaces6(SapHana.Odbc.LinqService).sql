BeforeExecute
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
	SELECT 1 AS "source_Id", '2' AS "source_Value" FROM DUMMY) "Source"
ON ("Target"."Id" = "Source"."source_Id")

WHEN NOT MATCHED AND "Source"."source_Id" > 1 THEN
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

