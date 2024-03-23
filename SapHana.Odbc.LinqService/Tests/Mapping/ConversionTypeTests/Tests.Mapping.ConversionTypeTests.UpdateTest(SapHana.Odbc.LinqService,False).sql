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
DECLARE @Data NVarChar(9) -- String
SET     @Data = '***III***'
DECLARE @ID  -- Int32
SET     @ID = 3

UPDATE
	"TrimTestTable" "t1"
SET
	"Data" = ?
WHERE
	"t1"."ID" = ?

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Data NVarChar(9) -- String
SET     @Data = '***OOO***'

UPDATE
	"TrimTestTable" "t"
SET
	"Data" = ?
WHERE
	"t"."Data" = '***XXX***'

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Data NVarChar(9) -- String
SET     @Data = '***SSS***'
DECLARE @p NVarChar(9) -- String
SET     @p = '***HHH***'

UPDATE
	"TrimTestTable" "t"
SET
	"Data" = ?
WHERE
	"t"."Data" = ?

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

