-- Firebird.2.5 Firebird

INSERT INTO "TPHTable"
(
	"Id",
	"Discriminator",
	"Value1",
	"Value2",
	"Value3",
	"NullableBool"
)
SELECT 1,1,CAST('Str1' AS VarChar(50) CHARACTER SET UNICODE_FSS),CAST(NULL AS VarChar(50) CHARACTER SET UNICODE_FSS),CAST(NULL AS VarChar(50) CHARACTER SET UNICODE_FSS),CAST(NULL AS VarChar(1) CHARACTER SET UNICODE_FSS) FROM rdb$database UNION ALL
SELECT 2,2,NULL,'Str2',NULL,NULL FROM rdb$database UNION ALL
SELECT 3,3,NULL,NULL,'Str3','Y' FROM rdb$database

-- Firebird.2.5 Firebird

SELECT
	"t1"."Discriminator",
	"t1"."Id",
	"t1"."Value3",
	"t1"."NullableBool",
	"t1"."Value2",
	"t1"."Value1"
FROM
	"TPHTable" "t1"
ORDER BY
	"t1"."Id"

-- Firebird.2.5 Firebird

SELECT FIRST 2
	"x"."Discriminator",
	"x"."Id",
	"x"."Value3",
	"x"."NullableBool",
	"x"."Value2",
	"x"."Value1"
FROM
	"TPHTable" "x"
WHERE
	"x"."Discriminator" = 1

-- Firebird.2.5 Firebird

SELECT FIRST 2
	"x"."Discriminator",
	"x"."Id",
	"x"."Value3",
	"x"."NullableBool",
	"x"."Value2",
	"x"."Value1"
FROM
	"TPHTable" "x"
WHERE
	"x"."Discriminator" = 2

-- Firebird.2.5 Firebird

SELECT FIRST 2
	"x"."Discriminator",
	"x"."Id",
	"x"."Value3",
	"x"."NullableBool",
	"x"."Value2",
	"x"."Value1"
FROM
	"TPHTable" "x"
WHERE
	"x"."Discriminator" = 3

-- Firebird.2.5 Firebird

SELECT FIRST 2
	"x"."Discriminator",
	"x"."Id",
	"x"."Value3",
	"x"."NullableBool",
	"x"."Value2",
	"x"."Value1"
FROM
	"TPHTable" "x"
WHERE
	"x"."Value1" = 'Str1'

-- Firebird.2.5 Firebird

SELECT FIRST 2
	"x"."Discriminator",
	"x"."Id",
	"x"."Value3",
	"x"."NullableBool",
	"x"."Value2",
	"x"."Value1"
FROM
	"TPHTable" "x"
WHERE
	"x"."Value2" = 'Str2'

-- Firebird.2.5 Firebird

SELECT FIRST 2
	"x"."Discriminator",
	"x"."Id",
	"x"."Value3",
	"x"."NullableBool",
	"x"."Value2",
	"x"."Value1"
FROM
	"TPHTable" "x"
WHERE
	"x"."Value3" = 'Str3'

