BeforeExecute
-- Firebird4 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'NotNullableBoolClass')) THEN
		EXECUTE STATEMENT 'DROP TABLE "NotNullableBoolClass"';
END

BeforeExecute
-- Firebird4 Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'NotNullableBoolClass')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "NotNullableBoolClass"
			(
				"Value" CHAR NOT NULL
			)
		';
END

BeforeExecute
-- Firebird4 Firebird
DECLARE @Value Char(1) -- String
SET     @Value = '1'

INSERT INTO "NotNullableBoolClass"
(
	"Value"
)
VALUES
(
	@Value
)

BeforeExecute
-- Firebird4 Firebird
DECLARE @Value Char(1) -- String
SET     @Value = '0'

INSERT INTO "NotNullableBoolClass"
(
	"Value"
)
VALUES
(
	@Value
)

BeforeExecute
-- Firebird4 Firebird

SELECT
	"t"."Value"
FROM
	"NotNullableBoolClass" "t"
WHERE
	"t"."Value" = 1

BeforeExecute
-- Firebird4 Firebird

SELECT
	"t"."Value"
FROM
	"NotNullableBoolClass" "t"
WHERE
	"t"."Value" = 1

BeforeExecute
-- Firebird4 Firebird

SELECT
	"t"."Value"
FROM
	"NotNullableBoolClass" "t"
WHERE
	"t"."Value" = 0

BeforeExecute
-- Firebird4 Firebird

SELECT
	"t"."Value"
FROM
	"NotNullableBoolClass" "t"
WHERE
	"t"."Value" = 0

BeforeExecute
-- Firebird4 Firebird

SELECT
	"t"."Value"
FROM
	"NotNullableBoolClass" "t"
WHERE
	"t"."Value" = 0

BeforeExecute
-- Firebird4 Firebird

SELECT
	"t"."Value"
FROM
	"NotNullableBoolClass" "t"
WHERE
	"t"."Value" = 1

BeforeExecute
-- Firebird4 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'NotNullableBoolClass')) THEN
		EXECUTE STATEMENT 'DROP TABLE "NotNullableBoolClass"';
END

