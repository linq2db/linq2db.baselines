BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Issue4469Table"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "Issue4469Table"
(
	"Integer" Integer        NOT NULL,
	"Decimal" Decimal(10, 5) NOT NULL,
	"Double"  Double         NOT NULL
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Integer  -- Int32
SET     @Integer = 100
DECLARE @Decimal Decimal(3, 0)
SET     @Decimal = 100
DECLARE @Double  -- Double
SET     @Double = 100

INSERT INTO "Issue4469Table"
(
	"Integer",
	"Decimal",
	"Double"
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	CAST("v"."Integer" AS Decimal) / 33,
	"v"."Decimal" / 33,
	"v"."Double" / 33
FROM
	"Issue4469Table" "v"
LIMIT 2

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Issue4469Table"

