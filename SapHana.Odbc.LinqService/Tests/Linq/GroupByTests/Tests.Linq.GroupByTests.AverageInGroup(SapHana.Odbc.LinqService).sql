BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "AggregationData"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "AggregationData"
(
	"GroupId"   Integer NOT NULL,
	"DataValue" Double      NULL
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @GroupId  -- Int32
SET     @GroupId = 1
DECLARE @DataValue  -- Double
SET     @DataValue = 1

INSERT INTO "AggregationData"
(
	"GroupId",
	"DataValue"
)
VALUES
(
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @GroupId  -- Int32
SET     @GroupId = 1
DECLARE @DataValue  -- Double
SET     @DataValue = NULL

INSERT INTO "AggregationData"
(
	"GroupId",
	"DataValue"
)
VALUES
(
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @GroupId  -- Int32
SET     @GroupId = 1
DECLARE @DataValue  -- Double
SET     @DataValue = 3

INSERT INTO "AggregationData"
(
	"GroupId",
	"DataValue"
)
VALUES
(
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @GroupId  -- Int32
SET     @GroupId = 1
DECLARE @DataValue  -- Double
SET     @DataValue = 1

INSERT INTO "AggregationData"
(
	"GroupId",
	"DataValue"
)
VALUES
(
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @GroupId  -- Int32
SET     @GroupId = 1
DECLARE @DataValue  -- Double
SET     @DataValue = 5

INSERT INTO "AggregationData"
(
	"GroupId",
	"DataValue"
)
VALUES
(
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @GroupId  -- Int32
SET     @GroupId = 1
DECLARE @DataValue  -- Double
SET     @DataValue = 6

INSERT INTO "AggregationData"
(
	"GroupId",
	"DataValue"
)
VALUES
(
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @GroupId  -- Int32
SET     @GroupId = 2
DECLARE @DataValue  -- Double
SET     @DataValue = 7

INSERT INTO "AggregationData"
(
	"GroupId",
	"DataValue"
)
VALUES
(
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @GroupId  -- Int32
SET     @GroupId = 2
DECLARE @DataValue  -- Double
SET     @DataValue = 8

INSERT INTO "AggregationData"
(
	"GroupId",
	"DataValue"
)
VALUES
(
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @GroupId  -- Int32
SET     @GroupId = 2
DECLARE @DataValue  -- Double
SET     @DataValue = 9

INSERT INTO "AggregationData"
(
	"GroupId",
	"DataValue"
)
VALUES
(
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @GroupId  -- Int32
SET     @GroupId = 2
DECLARE @DataValue  -- Double
SET     @DataValue = NULL

INSERT INTO "AggregationData"
(
	"GroupId",
	"DataValue"
)
VALUES
(
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @GroupId  -- Int32
SET     @GroupId = 2
DECLARE @DataValue  -- Double
SET     @DataValue = 11

INSERT INTO "AggregationData"
(
	"GroupId",
	"DataValue"
)
VALUES
(
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @GroupId  -- Int32
SET     @GroupId = 2
DECLARE @DataValue  -- Double
SET     @DataValue = 7

INSERT INTO "AggregationData"
(
	"GroupId",
	"DataValue"
)
VALUES
(
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @GroupId  -- Int32
SET     @GroupId = 3
DECLARE @DataValue  -- Double
SET     @DataValue = 13

INSERT INTO "AggregationData"
(
	"GroupId",
	"DataValue"
)
VALUES
(
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @GroupId  -- Int32
SET     @GroupId = 3
DECLARE @DataValue  -- Double
SET     @DataValue = 16

INSERT INTO "AggregationData"
(
	"GroupId",
	"DataValue"
)
VALUES
(
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @GroupId  -- Int32
SET     @GroupId = 3
DECLARE @DataValue  -- Double
SET     @DataValue = 16

INSERT INTO "AggregationData"
(
	"GroupId",
	"DataValue"
)
VALUES
(
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @GroupId  -- Int32
SET     @GroupId = 3
DECLARE @DataValue  -- Double
SET     @DataValue = 16

INSERT INTO "AggregationData"
(
	"GroupId",
	"DataValue"
)
VALUES
(
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @GroupId  -- Int32
SET     @GroupId = 3
DECLARE @DataValue  -- Double
SET     @DataValue = NULL

INSERT INTO "AggregationData"
(
	"GroupId",
	"DataValue"
)
VALUES
(
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @GroupId  -- Int32
SET     @GroupId = 3
DECLARE @DataValue  -- Double
SET     @DataValue = 18

INSERT INTO "AggregationData"
(
	"GroupId",
	"DataValue"
)
VALUES
(
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"g_1"."GroupId",
	AVG("g_1"."DataValue"),
	AVG("g_1"."DataValue"),
	AVG(CASE
		WHEN MOD("g_1"."DataValue", 2) = 0 AND MOD("g_1"."DataValue", 2) IS NOT NULL
			THEN "g_1"."DataValue"
		ELSE NULL
	END),
	AVG(CASE
		WHEN MOD("g_1"."DataValue", 2) = 0 AND MOD("g_1"."DataValue", 2) IS NOT NULL
			THEN "g_1"."DataValue"
		ELSE NULL
	END),
	AVG(DISTINCT "g_1"."DataValue"),
	AVG(DISTINCT CASE
		WHEN MOD("g_1"."DataValue", 2) = 0 AND MOD("g_1"."DataValue", 2) IS NOT NULL
			THEN "g_1"."DataValue"
		ELSE NULL
	END),
	AVG(DISTINCT CASE
		WHEN MOD("g_1"."DataValue", 2) = 0 AND MOD("g_1"."DataValue", 2) IS NOT NULL
			THEN "g_1"."DataValue"
		ELSE NULL
	END)
FROM
	"AggregationData" "g_1"
WHERE
	"g_1"."DataValue" IS NOT NULL
GROUP BY
	"g_1"."GroupId"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"t1"."GroupId",
	"t1"."DataValue"
FROM
	"AggregationData" "t1"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "AggregationData"

