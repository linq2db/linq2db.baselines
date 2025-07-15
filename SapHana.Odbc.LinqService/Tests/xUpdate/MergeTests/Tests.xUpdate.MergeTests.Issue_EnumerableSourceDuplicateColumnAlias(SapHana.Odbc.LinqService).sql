BeforeExecute
-- SapHana.Odbc SapHanaOdbc

MERGE INTO "MyChildClass" "Target"
USING (
	SELECT 1 AS "Id", 10 AS "Value_1" FROM DUMMY
	UNION ALL
	SELECT 2, 20 FROM DUMMY
	UNION ALL
	SELECT 3, 30 FROM DUMMY
	UNION ALL
	SELECT 4, 40 FROM DUMMY) "Source"
ON ("Target"."Id" = "Source"."Id")

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

