BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'NullableBoolClass')) THEN
		EXECUTE STATEMENT 'DROP TABLE "NullableBoolClass"';
END

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'NullableBoolClass')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "NullableBoolClass"
			(
				"Value" BOOLEAN
			)
		';
END

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @Value Boolean
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
-- Firebird.3 Firebird3
DECLARE @Value Boolean
SET     @Value = TRUE

INSERT INTO "NullableBoolClass"
(
	"Value"
)
VALUES
(
	@Value
)

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @Value Boolean
SET     @Value = FALSE

INSERT INTO "NullableBoolClass"
(
	"Value"
)
VALUES
(
	@Value
)

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @value Boolean
SET     @value = TRUE

SELECT
	"t"."Value"
FROM
	"NullableBoolClass" "t"
WHERE
	"t"."Value" = @value AND "t"."Value" IS NOT NULL

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'NullableBoolClass')) THEN
		EXECUTE STATEMENT 'DROP TABLE "NullableBoolClass"';
END

