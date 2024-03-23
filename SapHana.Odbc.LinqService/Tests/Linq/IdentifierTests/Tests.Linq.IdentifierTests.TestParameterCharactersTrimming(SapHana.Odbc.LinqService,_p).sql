BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "testparams"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "testparams"
(
	"_p" Integer NOT NULL
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @_p  -- Int32
SET     @_p = 2

UPDATE
	"testparams" "t"
SET
	"_p" = ?
WHERE
	"t"."_p" = 1

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "testparams"

