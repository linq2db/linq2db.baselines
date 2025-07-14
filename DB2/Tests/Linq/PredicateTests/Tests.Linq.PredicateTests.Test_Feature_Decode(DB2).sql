﻿BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	COUNT(*)
FROM
	"FeatureTable" "r"
WHERE
	DECODE("r"."One", "r"."One", 0, 1) = 0

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	COUNT(*)
FROM
	"FeatureTable" "r"
WHERE
	DECODE("r"."Zero", "r"."Zero", 0, 1) = 0

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	COUNT(*)
FROM
	"FeatureTable" "r"
WHERE
	DECODE("r"."Null", "r"."Null", 0, 1) = 0

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	COUNT(*)
FROM
	"FeatureTable" "r"
WHERE
	DECODE("r"."One", "r"."Zero", 0, 1) = 0

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	COUNT(*)
FROM
	"FeatureTable" "r"
WHERE
	DECODE("r"."One", "r"."Null", 0, 1) = 0

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	COUNT(*)
FROM
	"FeatureTable" "r"
WHERE
	DECODE("r"."Zero", "r"."Null", 0, 1) = 0

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	COUNT(*)
FROM
	"FeatureTable" "r"
WHERE
	DECODE("r"."One", "r"."One", 0, 1) <> 0

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	COUNT(*)
FROM
	"FeatureTable" "r"
WHERE
	DECODE("r"."Zero", "r"."Zero", 0, 1) <> 0

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	COUNT(*)
FROM
	"FeatureTable" "r"
WHERE
	DECODE("r"."Null", "r"."Null", 0, 1) <> 0

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	COUNT(*)
FROM
	"FeatureTable" "r"
WHERE
	DECODE("r"."One", "r"."Zero", 0, 1) <> 0

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	COUNT(*)
FROM
	"FeatureTable" "r"
WHERE
	DECODE("r"."One", "r"."Null", 0, 1) <> 0

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	COUNT(*)
FROM
	"FeatureTable" "r"
WHERE
	DECODE("r"."Zero", "r"."Null", 0, 1) <> 0

