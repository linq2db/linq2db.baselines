BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue3360Table1')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue3360Table1"';
END

BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue3360Table1')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Issue3360Table1"
			(
				"Id"    Int        NOT NULL,
				"Byte"  SmallInt   NOT NULL,
				"ByteN" SmallInt,
				"Guid"  BINARY(16) NOT NULL,
				"GuidN" BINARY(16),
				"Enum"  NChar(11)  NOT NULL,
				"EnumN" NChar(11),
				"Bool"  BOOLEAN    NOT NULL,
				"BoolN" BOOLEAN,

				CONSTRAINT "PK_Issue3360Table1" PRIMARY KEY ("Id")
			)
		';
END

BeforeExecute
-- Firebird.5 Firebird4
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
DECLARE @Bool Boolean
SET     @Bool = FALSE
DECLARE @BoolN Boolean
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
-- Firebird.5 Firebird4
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
DECLARE @Bool Boolean
SET     @Bool = TRUE
DECLARE @BoolN Boolean
SET     @BoolN = FALSE

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
-- Firebird.5 Firebird4
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
DECLARE @Bool Boolean
SET     @Bool = FALSE
DECLARE @BoolN Boolean
SET     @BoolN = TRUE

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
-- Firebird.5 Firebird4

SELECT
	"t1"."Id",
	"t1"."Byte",
	"t1"."Byte_1",
	"t1"."Guid",
	"t1"."Guid_1",
	"t1"."c1",
	"t1"."c2",
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
			NULL as "c1",
			NULL as "c2",
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
			"r_1"."Enum" as "c1",
			"r_1"."EnumN" as "c2",
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
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue3360Table1')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue3360Table1"';
END

