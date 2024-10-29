BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue3360Table1')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue3360Table1"';
END

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue3360Table1')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Issue3360Table1"
			(
				"Id"    Int                           NOT NULL,
				"Byte"  SmallInt                      NOT NULL,
				"ByteN" SmallInt,
				"Guid"  CHAR(16) CHARACTER SET OCTETS NOT NULL,
				"GuidN" CHAR(16) CHARACTER SET OCTETS,
				"Enum"  NChar(11)                     NOT NULL,
				"EnumN" NChar(11),
				"Bool"  CHAR(1)                       NOT NULL,
				"BoolN" CHAR(1),

				CONSTRAINT "PK_Issue3360Table1" PRIMARY KEY ("Id")
			)
		';
END

BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Byte SmallInt -- Int16
SET     @Byte = 0
DECLARE @ByteN SmallInt -- Int16
SET     @ByteN = NULL
DECLARE @Guid Guid
SET     @Guid = X'00000000000000000000000000000000'
DECLARE @GuidN Guid
SET     @GuidN = NULL
DECLARE @Enum Char(11) -- String
SET     @Enum = 'ENUM1_VALUE'
DECLARE @EnumN Char -- String
SET     @EnumN = NULL
DECLARE @Bool Char -- String
SET     @Bool = '0'
DECLARE @BoolN Char -- String
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
-- Firebird.2.5 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @Byte SmallInt -- Int16
SET     @Byte = 1
DECLARE @ByteN SmallInt -- Int16
SET     @ByteN = 2
DECLARE @Guid Guid
SET     @Guid = X'BC7B663D0FDE43278F925D8CC3A11D11'
DECLARE @GuidN Guid
SET     @GuidN = X'A948600DDE214F748AC29516B287076E'
DECLARE @Enum Char(11) -- String
SET     @Enum = 'ENUM1_VALUE'
DECLARE @EnumN Char(11) -- String
SET     @EnumN = 'ENUM2_VALUE'
DECLARE @Bool Char -- String
SET     @Bool = '1'
DECLARE @BoolN Char -- String
SET     @BoolN = '0'

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
-- Firebird.2.5 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 4
DECLARE @Byte SmallInt -- Int16
SET     @Byte = 3
DECLARE @ByteN SmallInt -- Int16
SET     @ByteN = 4
DECLARE @Guid Guid
SET     @Guid = X'BD3973A543234DD89F4FDF9F93E2A627'
DECLARE @GuidN Guid
SET     @GuidN = X'BC7B663D0FDE43278F925D8CC3A11D11'
DECLARE @Enum Char(11) -- String
SET     @Enum = 'ENUM1_VALUE'
DECLARE @EnumN Char(11) -- String
SET     @EnumN = 'ENUM2_VALUE'
DECLARE @Bool Char -- String
SET     @Bool = '0'
DECLARE @BoolN Char -- String
SET     @BoolN = '1'

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
-- Firebird.2.5 Firebird
DECLARE @Id Binary
SET     @Id = NULL
DECLARE @Id_1 Binary
SET     @Id_1 = NULL

SELECT
	"t1"."Id",
	"t1"."Byte",
	"t1"."Byte_1",
	"t1"."Guid",
	"t1"."Guid_1",
	"t1"."Enum",
	"t1"."EnumN",
	"t1"."Bool",
	"t1"."Bool_1"
FROM
	(
		SELECT
			"r"."Id",
			"r"."Byte",
			"r"."Byte" as "Byte_1",
			"r"."Guid",
			"r"."Guid" as "Guid_1",
			CAST(@Id AS CHAR(1)) as "Enum",
			CAST(@Id_1 AS CHAR(1)) as "EnumN",
			"r"."Bool",
			"r"."Bool" as "Bool_1"
		FROM
			"Issue3360Table1" "r"
		WHERE
			"r"."Id" = 2
		UNION ALL
		SELECT
			"r_1"."Id",
			"r_1"."Byte",
			"r_1"."ByteN" as "Byte_1",
			"r_1"."Guid",
			"r_1"."GuidN" as "Guid_1",
			"r_1"."Enum",
			"r_1"."EnumN",
			"r_1"."Bool",
			"r_1"."BoolN" as "Bool_1"
		FROM
			"Issue3360Table1" "r_1"
		WHERE
			"r_1"."Id" = 4
	) "t1"
ORDER BY
	"t1"."Id"

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue3360Table1')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue3360Table1"';
END

