BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @ID Int -- Int32
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

