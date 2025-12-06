-- SapHana.Odbc SapHanaOdbc

MERGE INTO "ReviewIndexes" "Target"
USING (
	SELECT 1 AS "Id" FROM DUMMY) "Source"
ON ("Target"."Id" = "Source"."Id")
WHEN MATCHED AND "Target"."Id" = "Source"."Id" THEN DELETE

