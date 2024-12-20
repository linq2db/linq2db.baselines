BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Issue1303"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "Issue1303"
(
	"ID"     Integer       NOT NULL,
	"Array"  VarBinary(10)     NULL,
	"Binary" VarBinary(10)     NULL,

	PRIMARY KEY ("ID")
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

INSERT INTO "Issue1303"
(
	"ID",
	"Array",
	"Binary"
)
VALUES
(
	1,
	x'010203',
	x'0405'
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"t1"."ID",
	"t1"."Array",
	"t1"."Binary"
FROM
	"Issue1303" "t1"
WHERE
	"t1"."ID" = 1
LIMIT 2

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"t1"."ID",
	"t1"."Array",
	"t1"."Binary"
FROM
	"Issue1303" "t1"
WHERE
	"t1"."Array" = x'010203'
LIMIT 2

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"t1"."ID",
	"t1"."Array",
	"t1"."Binary"
FROM
	"Issue1303" "t1"
WHERE
	"t1"."Binary" = x'0405'
LIMIT 2

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Issue1303"

