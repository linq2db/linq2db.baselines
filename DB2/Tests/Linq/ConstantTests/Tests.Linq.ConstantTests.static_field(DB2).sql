BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "TestConstantsData"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42710' BEGIN END;
	EXECUTE IMMEDIATE '
		CREATE TABLE "TestConstantsData"
		(
			"Id"                Int                   NOT NULL,
			"GuidValue"         char(16) for bit data NOT NULL,
			"GuidNullableValue" char(16) for bit data,
			"StringValue"       NVarChar(255)             NULL,

			CONSTRAINT "PK_TestConstantsData" PRIMARY KEY ("Id")
		)
	';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

INSERT INTO "TestConstantsData"
(
	"Id",
	"GuidValue",
	"GuidNullableValue",
	"StringValue"
)
VALUES
(1,BX'3D667BBCDE0F27438F925D8CC3A11D11',BX'3D667BBCDE0F27438F925D8CC3A11D11','StrValue')

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @GuidNonReadonly VarBinary(16) -- Binary
SET     @GuidNonReadonly = BX'3D667BBCDE0F27438F925D8CC3A11D11'

SELECT
	"e"."Id",
	"e"."GuidValue",
	"e"."GuidNullableValue",
	"e"."StringValue"
FROM
	"TestConstantsData" "e"
WHERE
	"e"."GuidValue" = @GuidNonReadonly AND "e"."GuidNullableValue" = @GuidNonReadonly

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"t1"."Id",
	"t1"."GuidValue",
	"t1"."GuidNullableValue",
	"t1"."StringValue"
FROM
	"TestConstantsData" "t1"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "TestConstantsData"';
END

