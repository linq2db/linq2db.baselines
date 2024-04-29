BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "testparams"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "testparams"
(
	"Test-Name" Integer NOT NULL
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Test-Name  -- Int32
SET     @Test-Name = 2

UPDATE
	"testparams" "t"
SET
	"Test-Name" = ?
WHERE
	"t"."Test-Name" = 1

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "testparams"

