BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'AggregationData')) THEN
		EXECUTE STATEMENT 'DROP TABLE "AggregationData"';
END

BeforeExecute
-- Firebird.5 Firebird4

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
-- Firebird.5 Firebird4

INSERT INTO "AggregationData"
(
	"GroupId",
	"DataValue"
)
SELECT 1,1 FROM rdb$database UNION ALL
SELECT 1,NULL FROM rdb$database UNION ALL
SELECT 1,3 FROM rdb$database UNION ALL
SELECT 1,1 FROM rdb$database UNION ALL
SELECT 1,5 FROM rdb$database UNION ALL
SELECT 1,6 FROM rdb$database UNION ALL
SELECT 2,7 FROM rdb$database UNION ALL
SELECT 2,8 FROM rdb$database UNION ALL
SELECT 2,9 FROM rdb$database UNION ALL
SELECT 2,NULL FROM rdb$database UNION ALL
SELECT 2,11 FROM rdb$database UNION ALL
SELECT 2,7 FROM rdb$database UNION ALL
SELECT 3,13 FROM rdb$database UNION ALL
SELECT 3,16 FROM rdb$database UNION ALL
SELECT 3,16 FROM rdb$database UNION ALL
SELECT 3,16 FROM rdb$database UNION ALL
SELECT 3,NULL FROM rdb$database UNION ALL
SELECT 3,18 FROM rdb$database

BeforeExecute
-- Firebird.5 Firebird4

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
-- Firebird.5 Firebird4

SELECT
	"t1"."GroupId",
	"t1"."DataValue"
FROM
	"AggregationData" "t1"

BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'AggregationData')) THEN
		EXECUTE STATEMENT 'DROP TABLE "AggregationData"';
END

