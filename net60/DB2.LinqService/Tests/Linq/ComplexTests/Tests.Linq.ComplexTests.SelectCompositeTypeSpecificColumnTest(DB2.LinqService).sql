BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "User"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42710' BEGIN END;
	EXECUTE IMMEDIATE '
		CREATE TABLE "User"
		(
			"city"            NVarChar(255)     NULL,
			"user_name"       NVarChar(255)     NULL,
			"street"          NVarChar(255)     NULL,
			"building_number" Int           NOT NULL
		)
	';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"u"."city"
FROM
	"User" "u"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"u"."street"
FROM
	"User" "u"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "User"';
END

