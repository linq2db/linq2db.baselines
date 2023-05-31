BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "testparams"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "testparams"
(
	"1p" Integer NOT NULL
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @1p  -- Int32
SET     @1p = 2

UPDATE
	"testparams"
SET
	"testparams"."1p" = ?
WHERE
	"testparams"."1p" = 1

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "testparams"

