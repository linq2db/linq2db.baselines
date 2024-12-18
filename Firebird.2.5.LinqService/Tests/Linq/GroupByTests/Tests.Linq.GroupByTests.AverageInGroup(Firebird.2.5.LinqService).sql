BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'AggregationData')) THEN
		EXECUTE STATEMENT 'DROP TABLE "AggregationData"';
END

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'AggregationData')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "AggregationData"
			(
				"GroupId"   Int   NOT NULL,
				"DataValue" Float
			)
		';
END

BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @GroupId Integer -- Int32
SET     @GroupId = 1
DECLARE @DataValue Double
SET     @DataValue = 1

INSERT INTO "AggregationData"
(
	"GroupId",
	"DataValue"
)
VALUES
(
	@GroupId,
	@DataValue
)

BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @GroupId Integer -- Int32
SET     @GroupId = 1
DECLARE @DataValue Double
SET     @DataValue = NULL

INSERT INTO "AggregationData"
(
	"GroupId",
	"DataValue"
)
VALUES
(
	@GroupId,
	@DataValue
)

BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @GroupId Integer -- Int32
SET     @GroupId = 1
DECLARE @DataValue Double
SET     @DataValue = 3

INSERT INTO "AggregationData"
(
	"GroupId",
	"DataValue"
)
VALUES
(
	@GroupId,
	@DataValue
)

BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @GroupId Integer -- Int32
SET     @GroupId = 1
DECLARE @DataValue Double
SET     @DataValue = 1

INSERT INTO "AggregationData"
(
	"GroupId",
	"DataValue"
)
VALUES
(
	@GroupId,
	@DataValue
)

BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @GroupId Integer -- Int32
SET     @GroupId = 1
DECLARE @DataValue Double
SET     @DataValue = 5

INSERT INTO "AggregationData"
(
	"GroupId",
	"DataValue"
)
VALUES
(
	@GroupId,
	@DataValue
)

BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @GroupId Integer -- Int32
SET     @GroupId = 1
DECLARE @DataValue Double
SET     @DataValue = 6

INSERT INTO "AggregationData"
(
	"GroupId",
	"DataValue"
)
VALUES
(
	@GroupId,
	@DataValue
)

BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @GroupId Integer -- Int32
SET     @GroupId = 2
DECLARE @DataValue Double
SET     @DataValue = 7

INSERT INTO "AggregationData"
(
	"GroupId",
	"DataValue"
)
VALUES
(
	@GroupId,
	@DataValue
)

BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @GroupId Integer -- Int32
SET     @GroupId = 2
DECLARE @DataValue Double
SET     @DataValue = 8

INSERT INTO "AggregationData"
(
	"GroupId",
	"DataValue"
)
VALUES
(
	@GroupId,
	@DataValue
)

BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @GroupId Integer -- Int32
SET     @GroupId = 2
DECLARE @DataValue Double
SET     @DataValue = 9

INSERT INTO "AggregationData"
(
	"GroupId",
	"DataValue"
)
VALUES
(
	@GroupId,
	@DataValue
)

BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @GroupId Integer -- Int32
SET     @GroupId = 2
DECLARE @DataValue Double
SET     @DataValue = NULL

INSERT INTO "AggregationData"
(
	"GroupId",
	"DataValue"
)
VALUES
(
	@GroupId,
	@DataValue
)

BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @GroupId Integer -- Int32
SET     @GroupId = 2
DECLARE @DataValue Double
SET     @DataValue = 11

INSERT INTO "AggregationData"
(
	"GroupId",
	"DataValue"
)
VALUES
(
	@GroupId,
	@DataValue
)

BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @GroupId Integer -- Int32
SET     @GroupId = 2
DECLARE @DataValue Double
SET     @DataValue = 7

INSERT INTO "AggregationData"
(
	"GroupId",
	"DataValue"
)
VALUES
(
	@GroupId,
	@DataValue
)

BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @GroupId Integer -- Int32
SET     @GroupId = 3
DECLARE @DataValue Double
SET     @DataValue = 13

INSERT INTO "AggregationData"
(
	"GroupId",
	"DataValue"
)
VALUES
(
	@GroupId,
	@DataValue
)

BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @GroupId Integer -- Int32
SET     @GroupId = 3
DECLARE @DataValue Double
SET     @DataValue = 16

INSERT INTO "AggregationData"
(
	"GroupId",
	"DataValue"
)
VALUES
(
	@GroupId,
	@DataValue
)

BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @GroupId Integer -- Int32
SET     @GroupId = 3
DECLARE @DataValue Double
SET     @DataValue = 16

INSERT INTO "AggregationData"
(
	"GroupId",
	"DataValue"
)
VALUES
(
	@GroupId,
	@DataValue
)

BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @GroupId Integer -- Int32
SET     @GroupId = 3
DECLARE @DataValue Double
SET     @DataValue = 16

INSERT INTO "AggregationData"
(
	"GroupId",
	"DataValue"
)
VALUES
(
	@GroupId,
	@DataValue
)

BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @GroupId Integer -- Int32
SET     @GroupId = 3
DECLARE @DataValue Double
SET     @DataValue = NULL

INSERT INTO "AggregationData"
(
	"GroupId",
	"DataValue"
)
VALUES
(
	@GroupId,
	@DataValue
)

BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @GroupId Integer -- Int32
SET     @GroupId = 3
DECLARE @DataValue Double
SET     @DataValue = 18

INSERT INTO "AggregationData"
(
	"GroupId",
	"DataValue"
)
VALUES
(
	@GroupId,
	@DataValue
)

BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	"g_1"."GroupId",
	AVG("g_1"."DataValue"),
	AVG("g_1"."DataValue"),
	AVG(CASE
		WHEN Mod("g_1"."DataValue", 2) = 0 AND Mod("g_1"."DataValue", 2) IS NOT NULL
			THEN "g_1"."DataValue"
		ELSE NULL
	END),
	AVG(CASE
		WHEN Mod("g_1"."DataValue", 2) = 0 AND Mod("g_1"."DataValue", 2) IS NOT NULL
			THEN "g_1"."DataValue"
		ELSE NULL
	END),
	AVG(DISTINCT "g_1"."DataValue"),
	AVG(DISTINCT CASE
		WHEN Mod("g_1"."DataValue", 2) = 0 AND Mod("g_1"."DataValue", 2) IS NOT NULL
			THEN "g_1"."DataValue"
		ELSE NULL
	END),
	AVG(DISTINCT CASE
		WHEN Mod("g_1"."DataValue", 2) = 0 AND Mod("g_1"."DataValue", 2) IS NOT NULL
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
-- Firebird.2.5 Firebird

SELECT
	"t1"."GroupId",
	"t1"."DataValue"
FROM
	"AggregationData" "t1"

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'AggregationData')) THEN
		EXECUTE STATEMENT 'DROP TABLE "AggregationData"';
END

