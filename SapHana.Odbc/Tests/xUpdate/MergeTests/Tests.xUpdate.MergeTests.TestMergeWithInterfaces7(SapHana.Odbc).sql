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
DECLARE @Id  -- Int32
SET     @Id = 2
DECLARE @Value NVarChar(1) -- String
SET     @Value = '3'

MERGE INTO "ReviewIndexes" "Target"
USING (
	SELECT 1 AS "source_Id" FROM DUMMY) "Source"
ON ("Target"."Id" = "Source"."source_Id")

WHEN NOT MATCHED THEN
INSERT
(
	"Id",
	"Value"
)
VALUES
(
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "ReviewIndexes"

