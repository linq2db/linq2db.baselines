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
	2,
	'***HHH***'
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

UPDATE
	"TrimTestTable" "t1"
SET
	"Data" = '***III***'
WHERE
	"t1"."ID" = 3

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

UPDATE
	"TrimTestTable" "t"
SET
	"Data" = '***OOO***'
WHERE
	"t"."Data" = '***XXX***' AND "t"."Data" IS NOT NULL

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

UPDATE
	"TrimTestTable" "t"
SET
	"Data" = '***SSS***'
WHERE
	"t"."Data" = '***HHH***' AND "t"."Data" IS NOT NULL

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

