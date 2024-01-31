BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "TrimTestTable"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "TrimTestTable"
(
	"ID"   Integer      NOT NULL,
	"Data" NVarChar(50)     NULL,

	PRIMARY KEY ("ID")
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

INSERT INTO "TrimTestTable"
(
	"ID",
	"Data"
)
VALUES
(
	1,
	'***XXX***'
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

INSERT INTO "TrimTestTable"
(
	"ID",
	"Data"
)
VALUES
(
	3,
	'***VVV***'
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

MERGE INTO "TrimTestTable" "Target"
USING (
	SELECT 1 AS "ID", '***OOO***' AS "Data_1" FROM DUMMY
	UNION ALL
	SELECT 2, '***SSS***' FROM DUMMY) "Source"
ON ("Target"."ID" = "Source"."ID")

WHEN MATCHED THEN
UPDATE
SET
	"Target"."Data" = "Source"."Data_1"

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
-- SapHana.Odbc SapHanaOdbc

MERGE INTO "TrimTestTable" "Target"
USING (
	SELECT 3 AS "ID", '***III***' AS "Data_1" FROM DUMMY) "Source"
ON ("Target"."ID" = "Source"."ID")

WHEN MATCHED THEN
UPDATE
SET
	"Target"."Data" = "Source"."Data_1"

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
-- SapHana.Odbc SapHanaOdbc

SELECT
	"r"."ID",
	"r"."Data"
FROM
	"TrimTestTable" "r"
ORDER BY
	"r"."ID"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"r"."ID",
	"r"."Data"
FROM
	"TrimTestTable" "r"
ORDER BY
	"r"."ID"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "TrimTestTable"

