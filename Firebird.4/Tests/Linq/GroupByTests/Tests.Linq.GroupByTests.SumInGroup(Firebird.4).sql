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
	"g_1"."GroupId",
	SUM("g_1"."DataValue"),
	SUM("g_1"."DataValue"),
	SUM(CASE
		WHEN Mod("g_1"."DataValue", 2) = 0 AND "g_1"."DataValue" IS NOT NULL
			THEN "g_1"."DataValue"
		ELSE NULL
	END),
	SUM(CASE
		WHEN Mod("g_1"."DataValue", 2) = 0 AND "g_1"."DataValue" IS NOT NULL
			THEN "g_1"."DataValue"
		ELSE NULL
	END),
	SUM(DISTINCT "g_1"."DataValue"),
	SUM(DISTINCT CASE
		WHEN Mod("g_1"."DataValue", 2) = 0 AND "g_1"."DataValue" IS NOT NULL
			THEN "g_1"."DataValue"
		ELSE NULL
	END),
	SUM(DISTINCT CASE
		WHEN Mod("g_1"."DataValue", 2) = 0 AND "g_1"."DataValue" IS NOT NULL
			THEN "g_1"."DataValue"
		ELSE NULL
	END)
FROM
	"AggregationData" "g_1"
GROUP BY
	"g_1"."GroupId"

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

