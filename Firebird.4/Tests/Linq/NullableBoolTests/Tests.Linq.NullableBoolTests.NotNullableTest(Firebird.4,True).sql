BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'NotNullableBoolClass')) THEN
		EXECUTE STATEMENT 'DROP TABLE "NotNullableBoolClass"';
END

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'NotNullableBoolClass')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "NotNullableBoolClass"
			(
				"Value" BOOLEAN NOT NULL
			)
		';
END

BeforeExecute
-- Firebird.4 Firebird4

INSERT INTO "NotNullableBoolClass"
(
	"Value"
)
SELECT TRUE FROM rdb$database UNION ALL
SELECT FALSE FROM rdb$database

BeforeExecute
-- Firebird.4 Firebird4

SELECT
	"t"."Value"
FROM
	"NotNullableBoolClass" "t"
WHERE
	"t"."Value" = TRUE

BeforeExecute
-- Firebird.4 Firebird4

SELECT
	"t"."Value"
FROM
	"NotNullableBoolClass" "t"
WHERE
	"t"."Value" = TRUE

BeforeExecute
-- Firebird.4 Firebird4

SELECT
	"t"."Value"
FROM
	"NotNullableBoolClass" "t"
WHERE
	"t"."Value" = FALSE

BeforeExecute
-- Firebird.4 Firebird4

SELECT
	"t"."Value"
FROM
	"NotNullableBoolClass" "t"
WHERE
	"t"."Value" = FALSE

BeforeExecute
-- Firebird.4 Firebird4

SELECT
	"t"."Value"
FROM
	"NotNullableBoolClass" "t"
WHERE
	"t"."Value" = FALSE

BeforeExecute
-- Firebird.4 Firebird4

SELECT
	"t"."Value"
FROM
	"NotNullableBoolClass" "t"
WHERE
	"t"."Value" = TRUE

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'NotNullableBoolClass')) THEN
		EXECUTE STATEMENT 'DROP TABLE "NotNullableBoolClass"';
END

