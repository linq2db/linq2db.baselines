BeforeExecute
--  DB2.LUW DB2LUW

CREATE TABLE "MyEntity"
(
	"Id"   BigInt        NOT NULL,
	"Name" NVarChar(256) NOT NULL
)

BeforeExecute
--  DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "MyEntity"';
END

BeforeExecute
--  DB2.LUW DB2LUW

CREATE TABLE "MyEntity"
(
	"Id"   BigInt        NOT NULL,
	"Name" NVarChar(256) NOT NULL
)

