BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "testparams"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "testparams"
(
	"p_p" Integer NOT NULL
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @p_p  -- Int32
SET     @p_p = 2

UPDATE
	"testparams" "t"
SET
	"p_p" = ?
WHERE
	"t"."p_p" = 1

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "testparams"

