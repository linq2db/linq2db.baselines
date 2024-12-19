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
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @GuidValue VarBinary(16) -- Binary
SET     @GuidValue = BX'3D667BBCDE0F27438F925D8CC3A11D11'
DECLARE @GuidNullableValue VarBinary(16) -- Binary
SET     @GuidNullableValue = BX'3D667BBCDE0F27438F925D8CC3A11D11'
DECLARE @StringValue VarChar(8) -- String
SET     @StringValue = 'StrValue'

INSERT INTO "TestConstantsData"
(
	"Id",
	"GuidValue",
	"GuidNullableValue",
	"StringValue"
)
VALUES
(
	@Id,
	@GuidValue,
	@GuidNullableValue,
	@StringValue
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"e"."Id",
	"e"."GuidValue",
	"e"."GuidNullableValue",
	"e"."StringValue"
FROM
	"TestConstantsData" "e"
WHERE
	"e"."StringValue" || '1' = 'StrValue1'

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

