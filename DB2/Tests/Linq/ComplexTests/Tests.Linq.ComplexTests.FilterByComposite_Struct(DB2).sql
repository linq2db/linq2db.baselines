BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "UserStruct"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42710' BEGIN END;
	EXECUTE IMMEDIATE '
		CREATE TABLE "UserStruct"
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

INSERT INTO "UserStruct"
(
	"city",
	"user_name",
	"street",
	"building_number"
)
VALUES
('Springwood','Freddy','Elm Street',13)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"u"."user_name",
	"u"."city",
	"u"."street",
	"u"."building_number"
FROM
	"UserStruct" "u"
WHERE
	"u"."city" = 'Springwood' AND "u"."street" = 'Elm Street' AND
	"u"."building_number" = 13
FETCH NEXT 2 ROWS ONLY

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "UserStruct"';
END

