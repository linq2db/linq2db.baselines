BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "testparams"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "testparams"
(
	"Test-٣ᛯ౾-End" Integer NOT NULL
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Test-٣ᛯ౾-End  -- Int32
SET     @Test-٣ᛯ౾-End = 2

UPDATE
	"testparams"
SET
	"testparams"."Test-٣ᛯ౾-End" = ?
WHERE
	"testparams"."Test-٣ᛯ౾-End" = 1

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "testparams"

