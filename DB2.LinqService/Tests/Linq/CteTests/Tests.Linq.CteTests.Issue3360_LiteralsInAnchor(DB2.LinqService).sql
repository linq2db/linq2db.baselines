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
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @Byte SmallInt(2) -- Int16
SET     @Byte = 0
DECLARE @ByteN SmallInt -- Int16
SET     @ByteN = NULL
DECLARE @Guid VarBinary(16) -- Binary
SET     @Guid = BX'00000000000000000000000000000000'
DECLARE @GuidN VarBinary -- Binary
SET     @GuidN = NULL
DECLARE @Enum Char(11) -- StringFixedLength
SET     @Enum = 'ENUM1_VALUE'
DECLARE @EnumN Char -- StringFixedLength
SET     @EnumN = NULL
DECLARE @Bool SmallInt(4) -- Int16
SET     @Bool = 0
DECLARE @BoolN SmallInt -- Boolean
SET     @BoolN = NULL

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
(
	@Id,
	@Byte,
	@ByteN,
	@Guid,
	@GuidN,
	@Enum,
	@EnumN,
	@Bool,
	@BoolN
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Id Integer(4) -- Int32
SET     @Id = 2
DECLARE @Byte SmallInt(2) -- Int16
SET     @Byte = 1
DECLARE @ByteN SmallInt(2) -- Int16
SET     @ByteN = 2
DECLARE @Guid VarBinary(16) -- Binary
SET     @Guid = BX'3D667BBCDE0F27438F925D8CC3A11D11'
DECLARE @GuidN VarBinary(16) -- Binary
SET     @GuidN = BX'0D6048A921DE744F8AC29516B287076E'
DECLARE @Enum Char(11) -- StringFixedLength
SET     @Enum = 'ENUM1_VALUE'
DECLARE @EnumN Char(11) -- StringFixedLength
SET     @EnumN = 'ENUM2_VALUE'
DECLARE @Bool SmallInt(4) -- Int16
SET     @Bool = 1
DECLARE @BoolN SmallInt(4) -- Int16
SET     @BoolN = 0

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
(
	@Id,
	@Byte,
	@ByteN,
	@Guid,
	@GuidN,
	@Enum,
	@EnumN,
	@Bool,
	@BoolN
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Id Integer(4) -- Int32
SET     @Id = 4
DECLARE @Byte SmallInt(2) -- Int16
SET     @Byte = 3
DECLARE @ByteN SmallInt(2) -- Int16
SET     @ByteN = 4
DECLARE @Guid VarBinary(16) -- Binary
SET     @Guid = BX'A57339BD2343D84D9F4FDF9F93E2A627'
DECLARE @GuidN VarBinary(16) -- Binary
SET     @GuidN = BX'3D667BBCDE0F27438F925D8CC3A11D11'
DECLARE @Enum Char(11) -- StringFixedLength
SET     @Enum = 'ENUM1_VALUE'
DECLARE @EnumN Char(11) -- StringFixedLength
SET     @EnumN = 'ENUM2_VALUE'
DECLARE @Bool SmallInt(4) -- Int16
SET     @Bool = 0
DECLARE @BoolN SmallInt(4) -- Int16
SET     @BoolN = 1

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
(
	@Id,
	@Byte,
	@ByteN,
	@Guid,
	@GuidN,
	@Enum,
	@EnumN,
	@Bool,
	@BoolN
)

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
		5,
		5,
		CAST(@Guid AS char(16) for bit data),
		CAST(@GuidN AS char(16) for bit data),
		'ENUM1_VALUE',
		'ENUM2_VALUE',
		1,
		0
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

