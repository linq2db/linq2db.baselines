BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'NullableBoolClass')) THEN
		EXECUTE STATEMENT 'DROP TABLE "NullableBoolClass"';
END

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'NullableBoolClass')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "NullableBoolClass"
			(
				"Value" CHAR(1)
			)
		';
END

BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @Value Char -- String
SET     @Value = NULL

INSERT INTO "NullableBoolClass"
(
	"Value"
)
VALUES
(
	@Value
)

BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @Value Char -- String
SET     @Value = '1'

INSERT INTO "NullableBoolClass"
(
	"Value"
)
VALUES
(
	@Value
)

BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @Value Char -- String
SET     @Value = '0'

INSERT INTO "NullableBoolClass"
(
	"Value"
)
VALUES
(
	@Value
)

BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @value Char -- String
SET     @value = '1'

SELECT
	"t"."Value"
FROM
	"NullableBoolClass" "t"
WHERE
	"t"."Value" = @value AND "t"."Value" IS NOT NULL

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'NullableBoolClass')) THEN
		EXECUTE STATEMENT 'DROP TABLE "NullableBoolClass"';
END

