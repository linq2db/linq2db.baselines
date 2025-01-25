BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'NotNullableBoolClass')) THEN
		EXECUTE STATEMENT 'DROP TABLE "NotNullableBoolClass"';
END

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'NotNullableBoolClass')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "NotNullableBoolClass"
			(
				"Value" CHAR(1) NOT NULL
			)
		';
END

BeforeExecute
-- Firebird.2.5 Firebird

INSERT INTO "NotNullableBoolClass"
(
	"Value"
)
SELECT '1' FROM rdb$database UNION ALL
SELECT '0' FROM rdb$database

BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	"t"."Value"
FROM
	"NotNullableBoolClass" "t"
WHERE
	"t"."Value" = '1'

BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	"t"."Value"
FROM
	"NotNullableBoolClass" "t"
WHERE
	"t"."Value" = '1'

BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	"t"."Value"
FROM
	"NotNullableBoolClass" "t"
WHERE
	"t"."Value" = '0'

BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	"t"."Value"
FROM
	"NotNullableBoolClass" "t"
WHERE
	"t"."Value" = '0'

BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	"t"."Value"
FROM
	"NotNullableBoolClass" "t"
WHERE
	"t"."Value" = '0'

BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	"t"."Value"
FROM
	"NotNullableBoolClass" "t"
WHERE
	"t"."Value" = '1'

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'NotNullableBoolClass')) THEN
		EXECUTE STATEMENT 'DROP TABLE "NotNullableBoolClass"';
END

