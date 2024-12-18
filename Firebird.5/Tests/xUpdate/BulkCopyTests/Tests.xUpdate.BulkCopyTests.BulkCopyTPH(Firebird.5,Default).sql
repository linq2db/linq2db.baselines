BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'TPHTable')) THEN
		EXECUTE STATEMENT 'DROP TABLE "TPHTable"';
END

BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'TPHTable')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "TPHTable"
			(
				"Id"            Int                                   NOT NULL,
				"Discriminator" Int                                   NOT NULL,
				"Value1"        VarChar(50) CHARACTER SET UNICODE_FSS,
				"Value2"        VarChar(50) CHARACTER SET UNICODE_FSS,
				"Value3"        VarChar(50) CHARACTER SET UNICODE_FSS,
				"NullableBool"  VarChar(1) CHARACTER SET UNICODE_FSS,

				CONSTRAINT "PK_TPHTable" PRIMARY KEY ("Id")
			)
		';
END

BeforeExecute
-- Firebird.5 Firebird4

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

BeforeExecute
-- Firebird.5 Firebird4

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

BeforeExecute
-- Firebird.5 Firebird4

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

BeforeExecute
-- Firebird.5 Firebird4

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

BeforeExecute
-- Firebird.5 Firebird4

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

BeforeExecute
-- Firebird.5 Firebird4

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
	"x"."Value1" = 'Str1' AND "x"."Value1" IS NOT NULL
FETCH NEXT 2 ROWS ONLY

BeforeExecute
-- Firebird.5 Firebird4

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
	"x"."Value2" = 'Str2' AND "x"."Value2" IS NOT NULL
FETCH NEXT 2 ROWS ONLY

BeforeExecute
-- Firebird.5 Firebird4

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
	"x"."Value3" = 'Str3' AND "x"."Value3" IS NOT NULL
FETCH NEXT 2 ROWS ONLY

BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'TPHTable')) THEN
		EXECUTE STATEMENT 'DROP TABLE "TPHTable"';
END

