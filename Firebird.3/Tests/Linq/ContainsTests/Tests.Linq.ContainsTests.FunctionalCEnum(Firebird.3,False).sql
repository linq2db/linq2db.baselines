BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Src')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Src"';
END

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Src')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Src"
			(
				"Id"    Int                                   NOT NULL,
				"Int"   Int,
				"Enum"  VarChar(5) CHARACTER SET UNICODE_FSS,
				"CEnum" VarChar(20) CHARACTER SET UNICODE_FSS
			)
		';
END

BeforeExecute
-- Firebird.3 Firebird3

INSERT INTO "Src"
(
	"Id",
	"Int",
	"Enum",
	"CEnum"
)
SELECT 1,NULL,CAST(NULL AS VarChar(5) CHARACTER SET UNICODE_FSS),CAST(NULL AS VarChar(20) CHARACTER SET UNICODE_FSS) FROM rdb$database UNION ALL
SELECT 2,2,'TWO','___Value2___' FROM rdb$database

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @CEnum VarChar(12) -- String
SET     @CEnum = '___Value3___'
DECLARE @CEnum_1 VarChar(12) -- String
SET     @CEnum_1 = '___Value4___'
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT
	"s"."Id"
FROM
	"Src" "s"
WHERE
	"s"."CEnum" IN (@CEnum, @CEnum_1)
FETCH NEXT @take ROWS ONLY

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @CEnum VarChar(12) -- String
SET     @CEnum = '___Value3___'
DECLARE @CEnum_1 VarChar -- String
SET     @CEnum_1 = NULL
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT
	"s"."Id"
FROM
	"Src" "s"
WHERE
	"s"."CEnum" IN (@CEnum, @CEnum_1)
FETCH NEXT @take ROWS ONLY

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @CEnum VarChar(12) -- String
SET     @CEnum = '___Value3___'
DECLARE @CEnum_1 VarChar(12) -- String
SET     @CEnum_1 = '___Value2___'
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT
	"s"."Id"
FROM
	"Src" "s"
WHERE
	"s"."CEnum" IN (@CEnum, @CEnum_1)
FETCH NEXT @take ROWS ONLY

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @CEnum VarChar -- String
SET     @CEnum = NULL
DECLARE @CEnum_1 VarChar(12) -- String
SET     @CEnum_1 = '___Value2___'
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT
	"s"."Id"
FROM
	"Src" "s"
WHERE
	"s"."CEnum" NOT IN (@CEnum, @CEnum_1)
FETCH NEXT @take ROWS ONLY

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @CEnum VarChar(12) -- String
SET     @CEnum = '___Value3___'
DECLARE @CEnum_1 VarChar(12) -- String
SET     @CEnum_1 = '___Value2___'
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT
	"s"."Id"
FROM
	"Src" "s"
WHERE
	"s"."CEnum" NOT IN (@CEnum, @CEnum_1)
FETCH NEXT @take ROWS ONLY

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Src')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Src"';
END

