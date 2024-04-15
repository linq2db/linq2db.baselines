﻿BeforeExecute
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
DECLARE @Array Binary(3)
SET     @Array = x'010203'
DECLARE @Binary Binary(2)
SET     @Binary = x'0405'

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
DECLARE @Array Binary(3)
SET     @Array = x'010203'

SELECT
	"_"."ID",
	"_"."Array",
	"_"."Binary"
FROM
	"Issue1303" "_"
WHERE
	"_"."Array" = ?
LIMIT 2

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Binary Binary(2)
SET     @Binary = x'0405'

SELECT
	"_"."ID",
	"_"."Array",
	"_"."Binary"
FROM
	"Issue1303" "_"
WHERE
	"_"."Binary" = ?
LIMIT 2

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Issue1303"

