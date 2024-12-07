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
-- Firebird.5 Firebird4

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
			NULL as "c1",
			NULL as "c2",
			NULL as "c3",
			NULL as "c4",
			NULL as "c5",
			NULL as "c6",
			NULL as "c7",
			NULL as "c8"
		FROM
			"Issue3360Table1" "r"
		WHERE
			"r"."Id" = 1
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
			"r_1"."Id" = 2
	) "t1"
ORDER BY
	"t1"."Id"

BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue3360Table1')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue3360Table1"';
END

