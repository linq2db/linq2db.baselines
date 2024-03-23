BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "testparams"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "testparams"
(
	"from" Integer NOT NULL
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @from  -- Int32
SET     @from = 2

UPDATE
	"testparams" "t"
SET
	"from" = ?
WHERE
	"t"."from" = 1

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "testparams"

