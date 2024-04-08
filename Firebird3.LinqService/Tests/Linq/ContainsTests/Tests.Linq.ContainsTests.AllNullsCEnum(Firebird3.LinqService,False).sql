﻿BeforeExecute
-- Firebird3 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Src')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Src"';
END

BeforeExecute
-- Firebird3 Firebird

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
-- Firebird3 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Int Integer -- Int32
SET     @Int = NULL
DECLARE @Enum VarChar -- String
SET     @Enum = NULL
DECLARE @CEnum VarChar -- String
SET     @CEnum = NULL

INSERT INTO "Src"
(
	"Id",
	"Int",
	"Enum",
	"CEnum"
)
VALUES
(
	CAST(@Id AS Int),
	CAST(@Int AS Int),
	CAST(@Enum AS VARCHAR(8191)),
	CAST(@CEnum AS VarChar(20) CHARACTER SET UNICODE_FSS)
)

BeforeExecute
-- Firebird3 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @Int Integer -- Int32
SET     @Int = 2
DECLARE @Enum VarChar(3) -- String
SET     @Enum = 'TWO'
DECLARE @CEnum VarChar(12) -- String
SET     @CEnum = '___Value2___'

INSERT INTO "Src"
(
	"Id",
	"Int",
	"Enum",
	"CEnum"
)
VALUES
(
	CAST(@Id AS Int),
	CAST(@Int AS Int),
	CAST(@Enum AS VARCHAR(3)),
	CAST(@CEnum AS VarChar(12) CHARACTER SET UNICODE_FSS)
)

BeforeExecute
-- Firebird3 Firebird
DECLARE @CEnum VarChar -- String
SET     @CEnum = NULL

SELECT
	Count(*)
FROM
	"Src" "s"
WHERE
	"s"."CEnum" IN (@CEnum, @CEnum)

BeforeExecute
-- Firebird3 Firebird
DECLARE @CEnum VarChar -- String
SET     @CEnum = NULL

SELECT
	Count(*)
FROM
	"Src" "s"
WHERE
	"s"."CEnum" NOT IN (@CEnum, @CEnum)

BeforeExecute
-- Firebird3 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Src')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Src"';
END

