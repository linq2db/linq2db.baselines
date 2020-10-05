BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "aa"
(
	"bb" Integer       NOT NULL,
	"cc" NVarChar(255)     NULL,

	PRIMARY KEY ("bb")
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @cc NVarChar(5) -- String
SET     @cc = 'hallo'
DECLARE @bb  -- Int32
SET     @bb = 99

INSERT INTO "aa"
(
	"cc",
	"bb"
)
VALUES
(
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"t1"."cc",
	"t1"."bb"
FROM
	"aa" "t1"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "aa"

