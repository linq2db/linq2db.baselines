BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "testparams"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "testparams"
(
	"col1"    Integer NOT NULL,
	"Column1" Integer NOT NULL
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @A123456789b123456789c123456789d123456789e123456789f123456789  -- Int32
SET     @A123456789b123456789c123456789d123456789e123456789f123456789 = 2

UPDATE
	"testparams"
SET
	"testparams"."col1" = ?
WHERE
	"testparams"."Column1" = 1

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "testparams"

