BeforeExecute
-- Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Src')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Src"';
END

BeforeExecute
-- Firebird

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
-- Firebird
DECLARE @Int_1 Integer -- Int32
SET     @Int_1 = 2
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
	@Int_1,
	@NullableInt,
	@String,
	@NullableString
)

BeforeExecute
-- Firebird
DECLARE @Int_1 Integer -- Int32
SET     @Int_1 = 3
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
	@Int_1,
	@NullableInt,
	@String,
	@NullableString
)

BeforeExecute
-- Firebird

SELECT
	NULLIF("s"."Int", 2)
FROM
	"Src" "s"
ORDER BY
	"s"."Int"

BeforeExecute
-- Firebird

SELECT
	NULLIF("s"."Int", 4)
FROM
	"Src" "s"
ORDER BY
	"s"."Int"

BeforeExecute
-- Firebird

SELECT
	NULLIF("s"."Int", NULL)
FROM
	"Src" "s"
ORDER BY
	"s"."Int"

BeforeExecute
-- Firebird

SELECT
	NULLIF("s"."NullableInt", 2)
FROM
	"Src" "s"
ORDER BY
	"s"."Int"

BeforeExecute
-- Firebird

SELECT
	NULLIF("s"."NullableInt", 4)
FROM
	"Src" "s"
ORDER BY
	"s"."Int"

BeforeExecute
-- Firebird

SELECT
	NULLIF("s"."NullableInt", NULL)
FROM
	"Src" "s"
ORDER BY
	"s"."Int"

BeforeExecute
-- Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Src')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Src"';
END

