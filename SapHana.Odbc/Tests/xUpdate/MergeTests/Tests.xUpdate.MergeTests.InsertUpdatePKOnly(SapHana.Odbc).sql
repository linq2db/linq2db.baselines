BeforeExecute
--  SapHana.Odbc SapHanaOdbc

MERGE INTO "PKOnlyTable" "Target"
USING (
	SELECT 1 AS "source_ID" FROM DUMMY
	UNION ALL
	SELECT 2 FROM DUMMY
	UNION ALL
	SELECT 3 FROM DUMMY) "Source"
ON ("Target"."ID" = "Source"."source_ID")

WHEN NOT MATCHED THEN
INSERT
(
	"ID"
)
VALUES
(
	"Source"."source_ID"
)

BeforeExecute
--  SapHana.Odbc SapHanaOdbc

SELECT
	"t1"."ID"
FROM
	"PKOnlyTable" "t1"
ORDER BY
	"t1"."ID"

