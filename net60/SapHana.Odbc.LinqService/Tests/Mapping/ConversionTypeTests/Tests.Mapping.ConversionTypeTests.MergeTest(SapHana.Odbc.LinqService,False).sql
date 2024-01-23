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
DECLARE @ID  -- Int32
SET     @ID = 1
DECLARE @Data NVarChar(9) -- String
SET     @Data = '***XXX***'

INSERT INTO "TrimTestTable"
(
	"ID",
	"Data"
)
VALUES
(
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @ID  -- Int32
SET     @ID = 3
DECLARE @Data NVarChar(9) -- String
SET     @Data = '***VVV***'

INSERT INTO "TrimTestTable"
(
	"ID",
	"Data"
)
VALUES
(
	?,
	?
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

