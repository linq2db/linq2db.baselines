BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue3360Table1')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue3360Table1"';
END

BeforeExecute
-- Firebird.3 Firebird3

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
				"Bool"  BOOLEAN                       NOT NULL,
				"BoolN" BOOLEAN,

				CONSTRAINT "PK_Issue3360Table1" PRIMARY KEY ("Id")
			)
		';
END

BeforeExecute
-- Firebird.3 Firebird3

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
SELECT 1,0,NULL,X'00000000000000000000000000000000',NULL,'ENUM1_VALUE',NULL,FALSE,NULL FROM rdb$database UNION ALL
SELECT 2,1,2,X'BC7B663D0FDE43278F925D8CC3A11D11',X'A948600DDE214F748AC29516B287076E','ENUM1_VALUE','ENUM2_VALUE',TRUE,FALSE FROM rdb$database UNION ALL
SELECT 4,3,4,X'BD3973A543234DD89F4FDF9F93E2A627',X'BC7B663D0FDE43278F925D8CC3A11D11','ENUM1_VALUE','ENUM2_VALUE',FALSE,TRUE FROM rdb$database

BeforeExecute
-- Firebird.3 Firebird3

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
			NULL as "Byte",
			NULL as "Byte_1",
			NULL as "Guid",
			NULL as "Guid_1",
			NULL as "c1",
			NULL as "c2",
			NULL as "Bool",
			NULL as "Bool_1"
		FROM
			"Issue3360Table1" "r"
		WHERE
			"r"."Id" = 1
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
			"r_1"."Id" = 2
	) "t1"
ORDER BY
	"t1"."Id"

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue3360Table1')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue3360Table1"';
END

