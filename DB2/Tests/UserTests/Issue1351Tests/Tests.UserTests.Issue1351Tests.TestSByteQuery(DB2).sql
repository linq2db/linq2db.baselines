BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "T1351Model"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42710' BEGIN END;
	EXECUTE IMMEDIATE '
		CREATE TABLE "T1351Model"
		(
			ID             Int      NOT NULL,
			"TestField"    smallint NOT NULL,
			"TestNullable" smallint     NULL
		)
	';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"t1".ID,
	"t1"."TestField",
	"t1"."TestNullable"
FROM
	"T1351Model" "t1"
WHERE
	"t1"."TestField" = 0

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"t1".ID,
	"t1"."TestField",
	"t1"."TestNullable"
FROM
	"T1351Model" "t1"
WHERE
	"t1"."TestNullable" <> 1 OR "t1"."TestNullable" IS NULL

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "T1351Model"';
END

