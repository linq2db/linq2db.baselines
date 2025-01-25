BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "AggregationData"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42710' BEGIN END;
	EXECUTE IMMEDIATE '
		CREATE TABLE "AggregationData"
		(
			"GroupId"   Int   NOT NULL,
			"DataValue" Float     NULL
		)
	';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

INSERT INTO "AggregationData"
(
	"GroupId",
	"DataValue"
)
VALUES
(1,1),
(1,NULL),
(1,3),
(1,1),
(1,5),
(1,6),
(2,7),
(2,8),
(2,9),
(2,NULL),
(2,11),
(2,7),
(3,13),
(3,16),
(3,16),
(3,16),
(3,NULL),
(3,18)

BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- DB2 DB2.LUW DB2LUW

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
-- DB2 DB2.LUW DB2LUW

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
				"d"."DataValue" IS NOT NULL AND Mod(Int("d"."DataValue"), 2) = 0
		) "d_1" ON "m_1"."GroupId" = "d_1"."GroupId"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

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
				"d"."DataValue" IS NOT NULL AND Mod(Int("d"."DataValue"), 2) = 0
		) "d_1" ON "m_1"."GroupId" = "d_1"."GroupId"

BeforeExecute
DisposeTransaction
BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"g_1"."GroupId",
	COUNT(*),
	COUNT(CASE
		WHEN Mod(Int("g_1"."DataValue"), 2) = 0 THEN 1
		ELSE NULL
	END),
	COUNT(*),
	COUNT(DISTINCT "g_1"."DataValue"),
	COUNT(CASE
		WHEN Mod(Int("g_1"."DataValue"), 2) = 0 THEN 1
		ELSE NULL
	END)
FROM
	"AggregationData" "g_1"
WHERE
	"g_1"."DataValue" IS NOT NULL
GROUP BY
	"g_1"."GroupId"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"t1"."GroupId",
	"t1"."DataValue"
FROM
	"AggregationData" "t1"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "AggregationData"';
END

