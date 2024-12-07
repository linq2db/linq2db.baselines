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

SELECT
	"t1"."Id",
	"t1"."c1",
	"t1"."c2",
	"t1"."c3",
	"t1"."c4",
	"t1"."c5",
	"t1"."c6",
	"t1"."c7",
	"t1"."c8"
FROM
	(
		SELECT
			"r"."Id",
			CAST(5 AS SmallInt) as "c1",
			CAST(5 AS SmallInt) as "c2",
			CAST(@Guid AS char(16) for bit data) as "c3",
			CAST(@GuidN AS char(16) for bit data) as "c4",
			Char('ENUM1_VALUE', 11) as "c5",
			Char('ENUM2_VALUE', 11) as "c6",
			CAST(1 AS smallint) as "c7",
			CAST(0 AS smallint) as "c8"
		FROM
			"Issue3360Table1" "r"
		WHERE
			"r"."Id" = 2
		UNION ALL
		SELECT
			"r_1"."Id",
			"r_1"."Byte" as "c1",
			"r_1"."ByteN" as "c2",
			"r_1"."Guid" as "c3",
			"r_1"."GuidN" as "c4",
			"r_1"."Enum" as "c5",
			"r_1"."EnumN" as "c6",
			"r_1"."Bool" as "c7",
			"r_1"."BoolN" as "c8"
		FROM
			"Issue3360Table1" "r_1"
		WHERE
			"r_1"."Id" = 4
	) "t1"
ORDER BY
	"t1"."Id"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "Issue3360Table1"';
END

