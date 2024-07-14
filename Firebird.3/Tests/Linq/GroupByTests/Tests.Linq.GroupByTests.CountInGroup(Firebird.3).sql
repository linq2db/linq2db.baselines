BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'AggregationData')) THEN
		EXECUTE STATEMENT 'DROP TABLE "AggregationData"';
END

BeforeExecute
-- Firebird.3 Firebird3

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
-- Firebird.3 Firebird3

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
BeginTransaction(RepeatableRead)
BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"m_1"."GroupId",
	"d_1"."DataValue"
FROM
	(
		SELECT DISTINCT
			"t"."GroupId"
		FROM
			"AggregationData" "t"
		WHERE
			"t"."DataValue" IS NOT NULL
	) "m_1"
		INNER JOIN (
			SELECT DISTINCT
				"d"."DataValue",
				"d"."GroupId"
			FROM
				"AggregationData" "d"
			WHERE
				"d"."DataValue" IS NOT NULL
		) "d_1" ON "m_1"."GroupId" = "d_1"."GroupId"

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"m_1"."GroupId",
	"d_1"."DataValue"
FROM
	(
		SELECT DISTINCT
			"t"."GroupId"
		FROM
			"AggregationData" "t"
		WHERE
			"t"."DataValue" IS NOT NULL
	) "m_1"
		INNER JOIN (
			SELECT DISTINCT
				"d"."DataValue",
				"d"."GroupId"
			FROM
				"AggregationData" "d"
			WHERE
				"d"."DataValue" IS NOT NULL AND Mod("d"."DataValue", 2) = 0
		) "d_1" ON "m_1"."GroupId" = "d_1"."GroupId"

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"m_1"."GroupId",
	"d_1"."DataValue"
FROM
	(
		SELECT DISTINCT
			"t"."GroupId"
		FROM
			"AggregationData" "t"
		WHERE
			"t"."DataValue" IS NOT NULL
	) "m_1"
		INNER JOIN (
			SELECT DISTINCT
				"d"."DataValue",
				"d"."GroupId"
			FROM
				"AggregationData" "d"
			WHERE
				"d"."DataValue" IS NOT NULL AND Mod("d"."DataValue", 2) = 0
		) "d_1" ON "m_1"."GroupId" = "d_1"."GroupId"

BeforeExecute
DisposeTransaction
BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"g_1"."GroupId",
	COUNT(*),
	COUNT(CASE
		WHEN Mod("g_1"."DataValue", 2) = 0 THEN 1
		ELSE NULL
	END),
	COUNT(*),
	COUNT(DISTINCT "g_1"."DataValue"),
	COUNT(CASE
		WHEN Mod("g_1"."DataValue", 2) = 0 THEN 1
		ELSE NULL
	END)
FROM
	"AggregationData" "g_1"
WHERE
	"g_1"."DataValue" IS NOT NULL
GROUP BY
	"g_1"."GroupId"

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1"."GroupId",
	"t1"."DataValue"
FROM
	"AggregationData" "t1"

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'AggregationData')) THEN
		EXECUTE STATEMENT 'DROP TABLE "AggregationData"';
END

