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
DECLARE @Array_1 Binary(3)
SET     @Array_1 = x'010203'
DECLARE @Binary_1 Binary(2)
SET     @Binary_1 = x'0405'

INSERT INTO "Issue1303"
(
	"ID",
	"Array",
	"Binary"
)
VALUES
(
	1,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"_"."ID",
	"_"."Array",
	"_"."Binary"
FROM
	"Issue1303" "_"
WHERE
	"_"."ID" = 1
LIMIT 2

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"_"."ID",
	"_"."Array",
	"_"."Binary"
FROM
	"Issue1303" "_"
WHERE
	"_"."Array" = x'010203'
LIMIT 2

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"_"."ID",
	"_"."Array",
	"_"."Binary"
FROM
	"Issue1303" "_"
WHERE
	"_"."Binary" = x'0405'
LIMIT 2

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Issue1303"

