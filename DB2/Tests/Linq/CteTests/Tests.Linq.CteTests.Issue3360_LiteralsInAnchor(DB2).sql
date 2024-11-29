BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "Issue3360Table1"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42710' BEGIN END;
	EXECUTE IMMEDIATE '
		CREATE TABLE "Issue3360Table1"
		(
			"Id"    Int                   NOT NULL,
			"Byte"  SmallInt              NOT NULL,
			"ByteN" SmallInt                  NULL,
			"Guid"  char(16) for bit data NOT NULL,
			"GuidN" char(16) for bit data,
			"Enum"  NChar(11)             NOT NULL,
			"EnumN" NChar(11)                 NULL,
			"Bool"  smallint              NOT NULL,
			"BoolN" smallint                  NULL,

			CONSTRAINT "PK_Issue3360Table1" PRIMARY KEY ("Id")
		)
	';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

INSERT INTO "Issue3360Table1"
(
	"Id",
	"Byte",
	"ByteN",
	"Guid",
	"GuidN",
	"Enum",
	"EnumN",
	"Bool",
	"BoolN"
)
VALUES
(1,0,NULL,BX'00000000000000000000000000000000',NULL,'ENUM1_VALUE',NULL,0,NULL),
(2,1,2,BX'3D667BBCDE0F27438F925D8CC3A11D11',BX'0D6048A921DE744F8AC29516B287076E','ENUM1_VALUE','ENUM2_VALUE',1,0),
(4,3,4,BX'A57339BD2343D84D9F4FDF9F93E2A627',BX'3D667BBCDE0F27438F925D8CC3A11D11','ENUM1_VALUE','ENUM2_VALUE',0,1)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Guid VarBinary(16) -- Binary
SET     @Guid = BX'27FE8A0B1C482E44B8CF729DDFEECE29'
DECLARE @GuidN VarBinary(16) -- Binary
SET     @GuidN = BX'27FE8A0B1C482E44B8CF729DDFEECE30'

WITH "cte"
(
	"Id",
	"Byte",
	"ByteN",
	"Guid",
	"GuidN",
	"Enum",
	"EnumN",
	"Bool",
	"BoolN"
)
AS
(
	SELECT
		"r"."Id",
		CAST(5 AS SmallInt),
		CAST(5 AS SmallInt),
		CAST(@Guid AS char(16) for bit data),
		CAST(@GuidN AS char(16) for bit data),
		Char('ENUM1_VALUE', 11),
		Char('ENUM2_VALUE', 11),
		CAST(1 AS smallint),
		CAST(0 AS smallint)
	FROM
		"Issue3360Table1" "r"
	WHERE
		"r"."Id" = 2
	UNION ALL
	SELECT
		"r_1"."Id",
		"r_1"."Byte",
		"r_1"."ByteN",
		"r_1"."Guid",
		"r_1"."GuidN",
		"r_1"."Enum",
		"r_1"."EnumN",
		"r_1"."Bool",
		"r_1"."BoolN"
	FROM
		"Issue3360Table1" "r_1",
		"cte" "parent"
	WHERE
		"r_1"."Id" = "parent"."Id" + 2
)
SELECT
	"t1"."Id",
	"t1"."Byte",
	"t1"."ByteN",
	"t1"."Guid",
	"t1"."GuidN",
	"t1"."Enum",
	"t1"."EnumN",
	"t1"."Bool",
	"t1"."BoolN"
FROM
	"cte" "t1"
ORDER BY
	"t1"."Id"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "Issue3360Table1"';
END

