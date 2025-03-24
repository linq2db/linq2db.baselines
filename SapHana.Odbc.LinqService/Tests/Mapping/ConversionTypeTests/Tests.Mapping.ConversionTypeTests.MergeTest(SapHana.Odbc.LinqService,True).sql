BeforeExecute
--  SapHana.Odbc SapHanaOdbc

MERGE INTO "TrimTestTable" "Target"
USING (
	SELECT 1 AS "source_ID", '***OOO***' AS "source_Data" FROM DUMMY
	UNION ALL
	SELECT 2, '***SSS***' FROM DUMMY) "Source"
ON ("Target"."ID" = "Source"."source_ID")

WHEN MATCHED THEN
UPDATE
SET
	"Data" = "Source"."source_Data"

WHEN NOT MATCHED THEN
INSERT
(
	"ID",
	"Data"
)
VALUES
(
	"Source"."source_ID",
	"Source"."source_Data"
)

BeforeExecute
--  SapHana.Odbc SapHanaOdbc

MERGE INTO "TrimTestTable" "Target"
USING (
	SELECT 3 AS "source_ID", '***III***' AS "source_Data" FROM DUMMY) "Source"
ON ("Target"."ID" = "Source"."source_ID")

WHEN MATCHED THEN
UPDATE
SET
	"Data" = "Source"."source_Data"

WHEN NOT MATCHED THEN
INSERT
(
	"ID",
	"Data"
)
VALUES
(
	"Source"."source_ID",
	"Source"."source_Data"
)

BeforeExecute
--  SapHana.Odbc SapHanaOdbc

SELECT
	"r"."ID",
	"r"."Data"
FROM
	"TrimTestTable" "r"
ORDER BY
	"r"."ID"

BeforeExecute
--  SapHana.Odbc SapHanaOdbc

SELECT
	"r"."ID",
	"r"."Data"
FROM
	"TrimTestTable" "r"
ORDER BY
	"r"."ID"

