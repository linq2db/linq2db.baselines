BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)

MERGE INTO "TrimTestTable" "Target"
USING (
	SELECT 1 AS "ID", '***OOO***' AS "Data_1" FROM DUMMY
	UNION ALL
	SELECT 2, '***SSS***' FROM DUMMY) "Source"
ON ("Target"."ID" = "Source"."ID")

WHEN MATCHED THEN
UPDATE
SET
	"Data" = "Source"."Data_1"

WHEN NOT MATCHED THEN
INSERT
(
	"ID",
	"Data"
)
VALUES
(
	"Source"."ID",
	"Source"."Data_1"
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)

MERGE INTO "TrimTestTable" "Target"
USING (
	SELECT 3 AS "ID", '***III***' AS "Data_1" FROM DUMMY) "Source"
ON ("Target"."ID" = "Source"."ID")

WHEN MATCHED THEN
UPDATE
SET
	"Data" = "Source"."Data_1"

WHEN NOT MATCHED THEN
INSERT
(
	"ID",
	"Data"
)
VALUES
(
	"Source"."ID",
	"Source"."Data_1"
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)

SELECT
	"r"."ID",
	"r"."Data"
FROM
	"TrimTestTable" "r"
ORDER BY
	"r"."ID"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)

SELECT
	"r"."ID",
	"r"."Data"
FROM
	"TrimTestTable" "r"
ORDER BY
	"r"."ID"

