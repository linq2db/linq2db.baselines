﻿BeforeExecute
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
-- DB2 DB2.LUW DB2LUW

SELECT
	"g_1"."GroupId",
	AVG("g_1"."DataValue"),
	AVG("g_1"."DataValue"),
	AVG(CASE
		WHEN Mod(Int("g_1"."DataValue"), 2) = 0 THEN "g_1"."DataValue"
		ELSE NULL
	END),
	AVG(CASE
		WHEN Mod(Int("g_1"."DataValue"), 2) = 0 THEN "g_1"."DataValue"
		ELSE NULL
	END),
	AVG(DISTINCT "g_1"."DataValue"),
	AVG(DISTINCT CASE
		WHEN Mod(Int("g_1"."DataValue"), 2) = 0 THEN "g_1"."DataValue"
		ELSE NULL
	END),
	AVG(DISTINCT CASE
		WHEN Mod(Int("g_1"."DataValue"), 2) = 0 THEN "g_1"."DataValue"
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

