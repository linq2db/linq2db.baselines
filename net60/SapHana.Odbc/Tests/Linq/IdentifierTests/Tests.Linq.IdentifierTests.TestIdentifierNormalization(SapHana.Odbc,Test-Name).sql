BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Test-Name"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "Test-Name"
(
	"Test-Name" Integer NOT NULL
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Test-Name  -- Int32
SET     @Test-Name = 2

UPDATE
	"Test-Name"
SET
	"Test-Name"."Test-Name" = ?
WHERE
	"Test-Name"."Test-Name" = 1

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Test-Name"

