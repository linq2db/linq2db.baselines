BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "FeatureTable"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42710' BEGIN END;
	EXECUTE IMMEDIATE '
		CREATE TABLE "FeatureTable"
		(
			"Id"       Int      NOT NULL,
			"One"      Int          NULL,
			"Zero"     Int          NULL,
			"Null"     Int          NULL,
			"True"     smallint     NULL,
			"False"    smallint     NULL,
			"BoolNull" smallint     NULL
		)
	';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

INSERT INTO "FeatureTable"
(
	"Id",
	"One",
	"Zero",
	"Null",
	"True",
	"False",
	"BoolNull"
)
VALUES
(1,1,0,NULL,1,0,NULL)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	COUNT(*)
FROM
	"FeatureTable" "r"
WHERE
	"r"."One" IS DISTINCT FROM "r"."One"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	COUNT(*)
FROM
	"FeatureTable" "r"
WHERE
	"r"."Zero" IS DISTINCT FROM "r"."Zero"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	COUNT(*)
FROM
	"FeatureTable" "r"
WHERE
	"r"."Null" IS DISTINCT FROM "r"."Null"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	COUNT(*)
FROM
	"FeatureTable" "r"
WHERE
	"r"."One" IS DISTINCT FROM "r"."Zero"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	COUNT(*)
FROM
	"FeatureTable" "r"
WHERE
	"r"."One" IS DISTINCT FROM "r"."Null"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	COUNT(*)
FROM
	"FeatureTable" "r"
WHERE
	"r"."Zero" IS DISTINCT FROM "r"."Null"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	COUNT(*)
FROM
	"FeatureTable" "r"
WHERE
	"r"."One" IS NOT DISTINCT FROM "r"."One"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	COUNT(*)
FROM
	"FeatureTable" "r"
WHERE
	"r"."Zero" IS NOT DISTINCT FROM "r"."Zero"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	COUNT(*)
FROM
	"FeatureTable" "r"
WHERE
	"r"."Null" IS NOT DISTINCT FROM "r"."Null"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	COUNT(*)
FROM
	"FeatureTable" "r"
WHERE
	"r"."One" IS NOT DISTINCT FROM "r"."Zero"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	COUNT(*)
FROM
	"FeatureTable" "r"
WHERE
	"r"."One" IS NOT DISTINCT FROM "r"."Null"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	COUNT(*)
FROM
	"FeatureTable" "r"
WHERE
	"r"."Zero" IS NOT DISTINCT FROM "r"."Null"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "FeatureTable"';
END

