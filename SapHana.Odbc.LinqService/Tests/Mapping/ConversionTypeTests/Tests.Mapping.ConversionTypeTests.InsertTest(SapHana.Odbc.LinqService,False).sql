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
SET     @Data = '***OOO***'

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
SET     @ID = 2
DECLARE @Data NVarChar(9) -- String
SET     @Data = '***HHH***'

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

