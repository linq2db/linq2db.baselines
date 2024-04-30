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
DECLARE @GroupId Integer(4) -- Int32
SET     @GroupId = 1
DECLARE @DataValue Double(8)
SET     @DataValue = 1

INSERT INTO "AggregationData"
(
	"GroupId",
	"DataValue"
)
VALUES
(
	CAST(@GroupId AS Int),
	CAST(@DataValue AS Float)
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @GroupId Integer(4) -- Int32
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
	CAST(@GroupId AS Int),
	CAST(@DataValue AS Float)
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @GroupId Integer(4) -- Int32
SET     @GroupId = 1
DECLARE @DataValue Double(8)
SET     @DataValue = 3

INSERT INTO "AggregationData"
(
	"GroupId",
	"DataValue"
)
VALUES
(
	CAST(@GroupId AS Int),
	CAST(@DataValue AS Float)
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @GroupId Integer(4) -- Int32
SET     @GroupId = 1
DECLARE @DataValue Double(8)
SET     @DataValue = 1

INSERT INTO "AggregationData"
(
	"GroupId",
	"DataValue"
)
VALUES
(
	CAST(@GroupId AS Int),
	CAST(@DataValue AS Float)
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @GroupId Integer(4) -- Int32
SET     @GroupId = 1
DECLARE @DataValue Double(8)
SET     @DataValue = 5

INSERT INTO "AggregationData"
(
	"GroupId",
	"DataValue"
)
VALUES
(
	CAST(@GroupId AS Int),
	CAST(@DataValue AS Float)
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @GroupId Integer(4) -- Int32
SET     @GroupId = 1
DECLARE @DataValue Double(8)
SET     @DataValue = 6

INSERT INTO "AggregationData"
(
	"GroupId",
	"DataValue"
)
VALUES
(
	CAST(@GroupId AS Int),
	CAST(@DataValue AS Float)
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @GroupId Integer(4) -- Int32
SET     @GroupId = 2
DECLARE @DataValue Double(8)
SET     @DataValue = 7

INSERT INTO "AggregationData"
(
	"GroupId",
	"DataValue"
)
VALUES
(
	CAST(@GroupId AS Int),
	CAST(@DataValue AS Float)
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @GroupId Integer(4) -- Int32
SET     @GroupId = 2
DECLARE @DataValue Double(8)
SET     @DataValue = 8

INSERT INTO "AggregationData"
(
	"GroupId",
	"DataValue"
)
VALUES
(
	CAST(@GroupId AS Int),
	CAST(@DataValue AS Float)
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @GroupId Integer(4) -- Int32
SET     @GroupId = 2
DECLARE @DataValue Double(8)
SET     @DataValue = 9

INSERT INTO "AggregationData"
(
	"GroupId",
	"DataValue"
)
VALUES
(
	CAST(@GroupId AS Int),
	CAST(@DataValue AS Float)
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @GroupId Integer(4) -- Int32
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
	CAST(@GroupId AS Int),
	CAST(@DataValue AS Float)
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @GroupId Integer(4) -- Int32
SET     @GroupId = 2
DECLARE @DataValue Double(8)
SET     @DataValue = 11

INSERT INTO "AggregationData"
(
	"GroupId",
	"DataValue"
)
VALUES
(
	CAST(@GroupId AS Int),
	CAST(@DataValue AS Float)
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @GroupId Integer(4) -- Int32
SET     @GroupId = 2
DECLARE @DataValue Double(8)
SET     @DataValue = 7

INSERT INTO "AggregationData"
(
	"GroupId",
	"DataValue"
)
VALUES
(
	CAST(@GroupId AS Int),
	CAST(@DataValue AS Float)
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @GroupId Integer(4) -- Int32
SET     @GroupId = 3
DECLARE @DataValue Double(8)
SET     @DataValue = 13

INSERT INTO "AggregationData"
(
	"GroupId",
	"DataValue"
)
VALUES
(
	CAST(@GroupId AS Int),
	CAST(@DataValue AS Float)
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @GroupId Integer(4) -- Int32
SET     @GroupId = 3
DECLARE @DataValue Double(8)
SET     @DataValue = 16

INSERT INTO "AggregationData"
(
	"GroupId",
	"DataValue"
)
VALUES
(
	CAST(@GroupId AS Int),
	CAST(@DataValue AS Float)
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @GroupId Integer(4) -- Int32
SET     @GroupId = 3
DECLARE @DataValue Double(8)
SET     @DataValue = 16

INSERT INTO "AggregationData"
(
	"GroupId",
	"DataValue"
)
VALUES
(
	CAST(@GroupId AS Int),
	CAST(@DataValue AS Float)
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @GroupId Integer(4) -- Int32
SET     @GroupId = 3
DECLARE @DataValue Double(8)
SET     @DataValue = 16

INSERT INTO "AggregationData"
(
	"GroupId",
	"DataValue"
)
VALUES
(
	CAST(@GroupId AS Int),
	CAST(@DataValue AS Float)
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @GroupId Integer(4) -- Int32
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
	CAST(@GroupId AS Int),
	CAST(@DataValue AS Float)
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @GroupId Integer(4) -- Int32
SET     @GroupId = 3
DECLARE @DataValue Double(8)
SET     @DataValue = 18

INSERT INTO "AggregationData"
(
	"GroupId",
	"DataValue"
)
VALUES
(
	CAST(@GroupId AS Int),
	CAST(@DataValue AS Float)
)

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

