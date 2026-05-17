-- SapHana.Odbc SapHanaOdbc
DECLARE @S1 NVarChar(2) -- String
SET     @S1 = 's1'

INSERT INTO "Projection1"
(
	"S1"
)
VALUES
(
	?
)

-- SapHana.Odbc SapHanaOdbc
DECLARE @S1 NVarChar(2) -- String
SET     @S1 = 's1'

INSERT INTO "Projection2"
(
	"S1"
)
VALUES
(
	?
)

-- SapHana.Odbc SapHanaOdbc

WITH "CTE_1" ("S1")
AS
(
	SELECT
		"projection2_1"."S1"
	FROM
		"Projection1" "t1"
			LEFT JOIN "Projection2" "projection2_1" ON "t1"."S1" = "projection2_1"."S1" OR "t1"."S1" IS NULL AND "projection2_1"."S1" IS NULL
)
SELECT
	"t2"."S1"
FROM
	"CTE_1" "t2"

