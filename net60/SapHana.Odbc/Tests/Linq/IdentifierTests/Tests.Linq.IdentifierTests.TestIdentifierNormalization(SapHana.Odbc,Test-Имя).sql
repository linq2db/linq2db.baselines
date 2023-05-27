BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Test-Имя"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "Test-Имя"
(
	"Test-Имя" Integer NOT NULL
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Test-Имя  -- Int32
SET     @Test-Имя = 2

UPDATE
	"Test-Имя"
SET
	"Test-Имя"."Test-Имя" = ?
WHERE
	"Test-Имя"."Test-Имя" = 1

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Test-Имя"

