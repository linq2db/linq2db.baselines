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
				"Int"            Int                                    NOT NULL,
				"NullableInt"    Int,
				"String"         VarChar(255) CHARACTER SET UNICODE_FSS,
				"NullableString" VarChar(255) CHARACTER SET UNICODE_FSS
			)
		';
END

BeforeExecute
-- Firebird.3 Firebird3
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
	@Int,
	@NullableInt,
	@String,
	@NullableString
)

BeforeExecute
-- Firebird.3 Firebird3
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
	@Int,
	@NullableInt,
	@String,
	@NullableString
)

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @value Integer -- Int32
SET     @value = 2

SELECT
	COUNT(*)
FROM
	"Src" "s"
WHERE
	"s"."Int" IS DISTINCT FROM @value

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @value Integer -- Int32
SET     @value = 2

SELECT
	COUNT(*)
FROM
	"Src" "s"
WHERE
	"s"."NullableInt" IS DISTINCT FROM @value

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @value Integer -- Int32
SET     @value = 2

SELECT
	COUNT(*)
FROM
	"Src" "s"
WHERE
	"s"."Int" IS NOT DISTINCT FROM @value

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @value Integer -- Int32
SET     @value = 2

SELECT
	COUNT(*)
FROM
	"Src" "s"
WHERE
	"s"."NullableInt" IS NOT DISTINCT FROM @value

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Src')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Src"';
END

