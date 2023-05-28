BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "testparams"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "testparams"
(
	"p$_.@#p" Integer NOT NULL
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @p$_.@#p  -- Int32
SET     @p$_.@#p = 2

UPDATE
	"testparams"
SET
	"testparams"."p$_.@#p" = ?
WHERE
	"testparams"."p$_.@#p" = 1

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "testparams"

