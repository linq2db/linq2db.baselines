-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "aa"
(
	"bb" Integer       NOT NULL,
	"cc" NVarChar(255)     NULL,

	PRIMARY KEY ("bb")
)

-- SapHana.Odbc SapHanaOdbc
DECLARE @bb Int -- Int32
SET     @bb = 99
DECLARE @cc NVarChar(5) -- String
SET     @cc = 'hallo'

INSERT INTO "aa"
(
	"bb",
	"cc"
)
VALUES
(
	?,
	?
)

-- SapHana.Odbc SapHanaOdbc

SELECT
	"t1"."bb",
	"t1"."cc"
FROM
	"aa" "t1"

-- SapHana.Odbc SapHanaOdbc

DROP TABLE "aa"

