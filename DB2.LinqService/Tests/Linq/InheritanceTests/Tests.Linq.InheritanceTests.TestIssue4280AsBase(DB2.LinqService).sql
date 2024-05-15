BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "Issue4280"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42710' BEGIN END;
	EXECUTE IMMEDIATE '
		CREATE TABLE "Issue4280"
		(
			"Id"           Int           NOT NULL,
			"SerialNumber" NVarChar(255)     NULL,
			"DeviceType"   NVarChar(255)     NULL,
			"Location"     NVarChar(255)     NULL,

			CONSTRAINT "PK_Issue4280" PRIMARY KEY ("Id")
		)
	';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Id Integer(4) -- Int32
SET     @Id = 2
DECLARE @SerialNumber VarChar(7) -- String
SET     @SerialNumber = 'TV00001'
DECLARE @DeviceType VarChar(2) -- String
SET     @DeviceType = 'TV'
DECLARE @Location VarChar(9) -- String
SET     @Location = 'Something'

INSERT INTO "Issue4280"
(
	"Id",
	"SerialNumber",
	"DeviceType",
	"Location"
)
VALUES
(
	@Id,
	@SerialNumber,
	@DeviceType,
	@Location
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @SerialNumber VarChar(9) -- String
SET     @SerialNumber = 'Disp00001'
DECLARE @DeviceType VarChar(7) -- String
SET     @DeviceType = 'DISPLAY'

INSERT INTO "Issue4280"
(
	"Id",
	"SerialNumber",
	"DeviceType"
)
VALUES
(
	@Id,
	@SerialNumber,
	@DeviceType
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"t1"."DeviceType",
	"t1"."Id",
	"t1"."SerialNumber",
	"t1"."Location"
FROM
	"Issue4280" "t1"
ORDER BY
	"t1"."Id"

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @SerialNumber VarChar(7) -- String
SET     @SerialNumber = 'TV00002'
DECLARE @DeviceType VarChar(2) -- String
SET     @DeviceType = 'TV'
DECLARE @Location VarChar(8) -- String
SET     @Location = 'Anything'
DECLARE @Id Integer(4) -- Int32
SET     @Id = 2

UPDATE
	"Issue4280" "t1"
SET
	"SerialNumber" = @SerialNumber,
	"DeviceType" = @DeviceType,
	"Location" = @Location
WHERE
	"t1"."Id" = @Id

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @SerialNumber VarChar(9) -- String
SET     @SerialNumber = 'Disp00002'
DECLARE @DeviceType VarChar(7) -- String
SET     @DeviceType = 'DISPLAY'
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1

UPDATE
	"Issue4280" "t1"
SET
	"SerialNumber" = @SerialNumber,
	"DeviceType" = @DeviceType
WHERE
	"t1"."Id" = @Id

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"t1"."DeviceType",
	"t1"."Id",
	"t1"."SerialNumber",
	"t1"."Location"
FROM
	"Issue4280" "t1"
ORDER BY
	"t1"."Id"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "Issue4280"';
END

