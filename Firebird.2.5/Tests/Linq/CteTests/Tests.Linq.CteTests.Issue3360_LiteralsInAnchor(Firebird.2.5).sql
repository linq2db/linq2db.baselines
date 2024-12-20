﻿BeforeExecute
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
SELECT 1,0,NULL,X'00000000000000000000000000000000',NULL,'ENUM1_VALUE',NULL,'0',NULL FROM rdb$database UNION ALL
SELECT 2,1,2,X'BC7B663D0FDE43278F925D8CC3A11D11',X'A948600DDE214F748AC29516B287076E','ENUM1_VALUE','ENUM2_VALUE','1','0' FROM rdb$database UNION ALL
SELECT 4,3,4,X'BD3973A543234DD89F4FDF9F93E2A627',X'BC7B663D0FDE43278F925D8CC3A11D11','ENUM1_VALUE','ENUM2_VALUE','0','1' FROM rdb$database

BeforeExecute
-- Firebird.2.5 Firebird

WITH RECURSIVE "cte"
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
		CAST(X'0B8AFE27481C442EB8CF729DDFEECE29' AS CHAR(16) CHARACTER SET OCTETS),
		CAST(X'0B8AFE27481C442EB8CF729DDFEECE30' AS CHAR(16) CHARACTER SET OCTETS),
		CAST('ENUM1_VALUE' AS CHAR(11)),
		CAST('ENUM2_VALUE' AS CHAR(11)),
		CAST('1' AS CHAR(1)),
		CAST('0' AS CHAR(1))
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
		"Issue3360Table1" "r_1"
			INNER JOIN "cte" "parent" ON "r_1"."Id" = "parent"."Id" + 2
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
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue3360Table1')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue3360Table1"';
END

