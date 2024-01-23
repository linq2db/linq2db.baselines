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
	"TrimTestTable"
SET
	"TrimTestTable"."Data" = '***III***'
WHERE
	"TrimTestTable"."ID" = 3

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

UPDATE
	"TrimTestTable"
SET
	"TrimTestTable"."Data" = '***OOO***'
WHERE
	"TrimTestTable"."Data" = '***XXX***'

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

UPDATE
	"TrimTestTable"
SET
	"TrimTestTable"."Data" = '***SSS***'
WHERE
	"TrimTestTable"."Data" = '***HHH***'

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

