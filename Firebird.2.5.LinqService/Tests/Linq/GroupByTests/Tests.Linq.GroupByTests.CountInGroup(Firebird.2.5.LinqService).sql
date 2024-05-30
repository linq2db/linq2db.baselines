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
	COUNT(*),
	COUNT(CASE
		WHEN Mod("g_1"."DataValue", 2) = 0 THEN 1
		ELSE NULL
	END),
	COUNT(*),
	COUNT(DISTINCT "g_1"."DataValue"),
	(
		SELECT
			COUNT(*)
		FROM
			(
				SELECT DISTINCT
					"x"."DataValue"
				FROM
					"AggregationData" "x"
				WHERE
					"x"."DataValue" IS NOT NULL AND "g_1"."GroupId" = "x"."GroupId"
			) "x_1"
		WHERE
			Mod("x_1"."DataValue", 2) = 0
	),
	(
		SELECT
			COUNT(*)
		FROM
			(
				SELECT DISTINCT
					"t"."DataValue"
				FROM
					"AggregationData" "t"
				WHERE
					"t"."DataValue" IS NOT NULL AND "g_1"."GroupId" = "t"."GroupId" AND
					Mod("t"."DataValue", 2) = 0
			) "t1"
	),
	(
		SELECT
			COUNT(*)
		FROM
			(
				SELECT DISTINCT
					"x_2"."DataValue"
				FROM
					"AggregationData" "x_2"
				WHERE
					"x_2"."DataValue" IS NOT NULL AND "g_1"."GroupId" = "x_2"."GroupId" AND
					Mod("x_2"."DataValue", 2) = 0
			) "x_3"
		WHERE
			Mod("x_3"."DataValue", 2) = 0
	),
	COUNT(CASE
		WHEN Mod("g_1"."DataValue", 2) = 0 THEN 1
		ELSE NULL
	END),
	(
		SELECT
			COUNT(*)
		FROM
			(
				SELECT DISTINCT
					"t_1"."DataValue"
				FROM
					"AggregationData" "t_1"
				WHERE
					"t_1"."DataValue" IS NOT NULL AND "g_1"."GroupId" = "t_1"."GroupId" AND
					Mod("t_1"."DataValue", 2) = 0
			) "t2"
	)
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

