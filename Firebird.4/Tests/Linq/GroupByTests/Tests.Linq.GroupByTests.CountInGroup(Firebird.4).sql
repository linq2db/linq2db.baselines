BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'AggregationData')) THEN
		EXECUTE STATEMENT 'DROP TABLE "AggregationData"';
END

BeforeExecute
-- Firebird.4 Firebird4

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
-- Firebird.4 Firebird4

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
-- Firebird.4 Firebird4

SELECT
	"t7"."Key_1",
	"t7".COUNT_1,
	"t7".COUNT_2,
	"t7".COUNT_3,
	"t7".COUNT_4,
	"t1".COUNT_1,
	"t3".COUNT_1,
	"t4".COUNT_1,
	"t7".COUNT_5,
	"t6".COUNT_1
FROM
	(
		SELECT
			"t"."GroupId" as "Key_1",
			COUNT(*) as COUNT_1,
			COUNT(CASE
				WHEN Mod("t"."DataValue", 2) = 0 AND "t"."DataValue" IS NOT NULL
					THEN 1
				ELSE NULL
			END) as COUNT_2,
			COUNT(*) as COUNT_3,
			COUNT(DISTINCT "t"."DataValue") as COUNT_4,
			COUNT(CASE
				WHEN Mod("t"."DataValue", 2) = 0 AND "t"."DataValue" IS NOT NULL
					THEN 1
				ELSE NULL
			END) as COUNT_5
		FROM
			"AggregationData" "t"
		WHERE
			"t"."DataValue" IS NOT NULL
		GROUP BY
			"t"."GroupId"
	) "t7"
		LEFT JOIN LATERAL (
			SELECT
				COUNT(*) as COUNT_1
			FROM
				(
					SELECT DISTINCT
						"x"."DataValue"
					FROM
						"AggregationData" "x"
					WHERE
						"x"."DataValue" IS NOT NULL AND "t7"."Key_1" = "x"."GroupId"
				) "x_1"
			WHERE
				Mod("x_1"."DataValue", 2) = 0 AND "x_1"."DataValue" IS NOT NULL
		) "t1" ON 1=1
		LEFT JOIN LATERAL (
			SELECT
				COUNT(*) as COUNT_1
			FROM
				(
					SELECT DISTINCT
						"t_1"."DataValue"
					FROM
						"AggregationData" "t_1"
					WHERE
						"t_1"."DataValue" IS NOT NULL AND
						"t7"."Key_1" = "t_1"."GroupId" AND
						Mod("t_1"."DataValue", 2) = 0 AND
						"t_1"."DataValue" IS NOT NULL
				) "t2"
		) "t3" ON 1=1
		LEFT JOIN LATERAL (
			SELECT
				COUNT(*) as COUNT_1
			FROM
				(
					SELECT DISTINCT
						"x_2"."DataValue"
					FROM
						"AggregationData" "x_2"
					WHERE
						"x_2"."DataValue" IS NOT NULL AND
						"t7"."Key_1" = "x_2"."GroupId" AND
						Mod("x_2"."DataValue", 2) = 0 AND
						"x_2"."DataValue" IS NOT NULL
				) "x_3"
			WHERE
				Mod("x_3"."DataValue", 2) = 0 AND "x_3"."DataValue" IS NOT NULL
		) "t4" ON 1=1
		LEFT JOIN LATERAL (
			SELECT
				COUNT(*) as COUNT_1
			FROM
				(
					SELECT DISTINCT
						"t_2"."DataValue"
					FROM
						"AggregationData" "t_2"
					WHERE
						"t_2"."DataValue" IS NOT NULL AND
						"t7"."Key_1" = "t_2"."GroupId" AND
						Mod("t_2"."DataValue", 2) = 0 AND
						"t_2"."DataValue" IS NOT NULL
				) "t5"
		) "t6" ON 1=1

BeforeExecute
-- Firebird.4 Firebird4

SELECT
	"t1"."GroupId",
	"t1"."DataValue"
FROM
	"AggregationData" "t1"

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'AggregationData')) THEN
		EXECUTE STATEMENT 'DROP TABLE "AggregationData"';
END

