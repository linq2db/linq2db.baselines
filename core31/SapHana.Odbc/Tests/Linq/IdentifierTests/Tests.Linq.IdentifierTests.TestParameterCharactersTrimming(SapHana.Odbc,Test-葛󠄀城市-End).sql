BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "testparams"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "testparams"
(
	"Test-葛󠄀城市-End" Integer NOT NULL
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Test-葛󠄀城市-End  -- Int32
SET     @Test-葛󠄀城市-End = 2

UPDATE
	"testparams"
SET
	"testparams"."Test-葛󠄀城市-End" = ?
WHERE
	"testparams"."Test-葛󠄀城市-End" = 1

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "testparams"

