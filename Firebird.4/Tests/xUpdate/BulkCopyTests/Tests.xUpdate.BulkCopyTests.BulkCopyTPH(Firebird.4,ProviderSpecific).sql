-- Firebird.4 Firebird4

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

-- Firebird.4 Firebird4

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

-- Firebird.4 Firebird4

SELECT
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
FETCH NEXT 2 ROWS ONLY

-- Firebird.4 Firebird4

SELECT
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
FETCH NEXT 2 ROWS ONLY

-- Firebird.4 Firebird4

SELECT
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
FETCH NEXT 2 ROWS ONLY

-- Firebird.4 Firebird4

SELECT
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
FETCH NEXT 2 ROWS ONLY

-- Firebird.4 Firebird4

SELECT
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
FETCH NEXT 2 ROWS ONLY

-- Firebird.4 Firebird4

SELECT
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
FETCH NEXT 2 ROWS ONLY

