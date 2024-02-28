BeforeExecute
-- Firebird4 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'NullableBoolClass')) THEN
		EXECUTE STATEMENT 'DROP TABLE "NullableBoolClass"';
END

BeforeExecute
-- Firebird4 Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'NullableBoolClass')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "NullableBoolClass"
			(
				"Value" CHAR
			)
		';
END

BeforeExecute
-- Firebird4 Firebird

INSERT INTO "NullableBoolClass"
(
	"Value"
)
SELECT NULL FROM rdb$database UNION ALL
SELECT 1 FROM rdb$database UNION ALL
SELECT 0 FROM rdb$database

BeforeExecute
-- Firebird4 Firebird

SELECT
	"t"."Value"
FROM
	"NullableBoolClass" "t"
WHERE
	"t"."Value" = 0

BeforeExecute
-- Firebird4 Firebird

SELECT
	"t"."Value"
FROM
	"NullableBoolClass" "t"
WHERE
	"t"."Value" = 0

BeforeExecute
-- Firebird4 Firebird

SELECT
	"t"."Value"
FROM
	"NullableBoolClass" "t"
WHERE
	("t"."Value" = 1 OR "t"."Value" IS NULL)

BeforeExecute
-- Firebird4 Firebird

SELECT
	"t"."Value"
FROM
	"NullableBoolClass" "t"
WHERE
	"t"."Value" = 1

BeforeExecute
-- Firebird4 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'NullableBoolClass')) THEN
		EXECUTE STATEMENT 'DROP TABLE "NullableBoolClass"';
END

