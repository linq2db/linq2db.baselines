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
				"Int"            Int                                    NOT NULL,
				"NullableInt"    Int,
				"String"         VarChar(255) CHARACTER SET UNICODE_FSS,
				"NullableString" VarChar(255) CHARACTER SET UNICODE_FSS
			)
		';
END

BeforeExecute
-- Firebird3 Firebird
DECLARE @Int Integer -- Int32
SET     @Int = 2
DECLARE @NullableInt Integer -- Int32
SET     @NullableInt = 2
DECLARE @String VarChar(3) -- String
SET     @String = 'abc'
DECLARE @NullableString VarChar(3) -- String
SET     @NullableString = 'abc'

INSERT INTO "Src"
(
	"Int",
	"NullableInt",
	"String",
	"NullableString"
)
VALUES
(
	CAST(@Int AS Int),
	CAST(@NullableInt AS Int),
	CAST(@String AS VARCHAR(3)),
	CAST(@NullableString AS VARCHAR(3))
)

BeforeExecute
-- Firebird3 Firebird
DECLARE @Int Integer -- Int32
SET     @Int = 3
DECLARE @NullableInt Integer -- Int32
SET     @NullableInt = NULL
DECLARE @String VarChar(3) -- String
SET     @String = 'def'
DECLARE @NullableString VarChar -- String
SET     @NullableString = NULL

INSERT INTO "Src"
(
	"Int",
	"NullableInt",
	"String",
	"NullableString"
)
VALUES
(
	CAST(@Int AS Int),
	CAST(@NullableInt AS Int),
	CAST(@String AS VARCHAR(3)),
	CAST(@NullableString AS VARCHAR(8191))
)

BeforeExecute
-- Firebird3 Firebird

SELECT
	Count(*)
FROM
	"Src" "s"

BeforeExecute
-- Firebird3 Firebird

SELECT
	Count(*)
FROM
	"Src" "s"
WHERE
	"s"."NullableInt" IS NOT NULL

BeforeExecute
-- Firebird3 Firebird

SELECT
	Count(*)
FROM
	"Src" "s"
WHERE
	1 = 0

BeforeExecute
-- Firebird3 Firebird

SELECT
	Count(*)
FROM
	"Src" "s"
WHERE
	"s"."NullableInt" IS NULL

BeforeExecute
-- Firebird3 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Src')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Src"';
END

