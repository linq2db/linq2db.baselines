BeforeExecute
-- Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'TPHTable')) THEN
		EXECUTE STATEMENT 'DROP TABLE "TPHTable"';
END

BeforeExecute
-- Firebird

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
-- Firebird

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
-- Firebird

SELECT
	"t1"."Id",
	"t1"."Discriminator",
	"t1"."Value1",
	"t1"."Value2",
	"t1"."Value3",
	"t1"."NullableBool"
FROM
	"TPHTable" "t1"
ORDER BY
	"t1"."Id"

BeforeExecute
-- Firebird
DECLARE @take Integer -- Int32
SET     @take = 2

SELECT FIRST @take
	"x"."Id",
	"x"."Discriminator",
	"x"."Value1",
	"x"."Value2",
	"x"."Value3",
	"x"."NullableBool"
FROM
	"TPHTable" "x"
WHERE
	"x"."Discriminator" = 1

BeforeExecute
-- Firebird
DECLARE @take Integer -- Int32
SET     @take = 2

SELECT FIRST @take
	"x"."Id",
	"x"."Discriminator",
	"x"."Value1",
	"x"."Value2",
	"x"."Value3",
	"x"."NullableBool"
FROM
	"TPHTable" "x"
WHERE
	"x"."Discriminator" = 2

BeforeExecute
-- Firebird
DECLARE @take Integer -- Int32
SET     @take = 2

SELECT FIRST @take
	"x"."Id",
	"x"."Discriminator",
	"x"."Value1",
	"x"."Value2",
	"x"."Value3",
	"x"."NullableBool"
FROM
	"TPHTable" "x"
WHERE
	"x"."Discriminator" = 3

BeforeExecute
-- Firebird
DECLARE @take Integer -- Int32
SET     @take = 2

SELECT FIRST @take
	"x"."Id",
	"x"."Discriminator",
	"x"."Value1",
	"x"."Value2",
	"x"."Value3",
	"x"."NullableBool"
FROM
	"TPHTable" "x"
WHERE
	"x"."Value1" = 'Str1'

BeforeExecute
-- Firebird
DECLARE @take Integer -- Int32
SET     @take = 2

SELECT FIRST @take
	"x"."Id",
	"x"."Discriminator",
	"x"."Value1",
	"x"."Value2",
	"x"."Value3",
	"x"."NullableBool"
FROM
	"TPHTable" "x"
WHERE
	"x"."Value2" = 'Str2'

BeforeExecute
-- Firebird
DECLARE @take Integer -- Int32
SET     @take = 2

SELECT FIRST @take
	"x"."Id",
	"x"."Discriminator",
	"x"."Value1",
	"x"."Value2",
	"x"."Value3",
	"x"."NullableBool"
FROM
	"TPHTable" "x"
WHERE
	"x"."Value3" = 'Str3'

BeforeExecute
-- Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'TPHTable')) THEN
		EXECUTE STATEMENT 'DROP TABLE "TPHTable"';
END

