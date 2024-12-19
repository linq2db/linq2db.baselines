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
DECLARE @Residence_City VarChar(10) -- String
SET     @Residence_City = 'Springwood'
DECLARE @Name VarChar(6) -- String
SET     @Name = 'Freddy'
DECLARE @Residence_Street VarChar(10) -- String
SET     @Residence_Street = 'Elm Street'
DECLARE @Residence_Building Integer(4) -- Int32
SET     @Residence_Building = 13

INSERT INTO "UserStruct"
(
	"city",
	"user_name",
	"street",
	"building_number"
)
VALUES
(
	@Residence_City,
	@Name,
	@Residence_Street,
	@Residence_Building
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT DISTINCT
	"u"."city",
	"u"."street",
	"u"."building_number"
FROM
	"UserStruct" "u"
FETCH NEXT 2 ROWS ONLY

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "UserStruct"';
END

