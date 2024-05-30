BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'NullableBoolClass')) THEN
		EXECUTE STATEMENT 'DROP TABLE "NullableBoolClass"';
END

BeforeExecute
-- Firebird.4 Firebird4

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
-- Firebird.4 Firebird4
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
-- Firebird.4 Firebird4
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
-- Firebird.4 Firebird4
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
-- Firebird.4 Firebird4

SELECT
	"t"."Value"
FROM
	"NullableBoolClass" "t"
WHERE
	"t"."Value" IS NULL

BeforeExecute
-- Firebird.4 Firebird4

SELECT
	"t"."Value"
FROM
	"NullableBoolClass" "t"
WHERE
	1 = 0

BeforeExecute
-- Firebird.4 Firebird4

SELECT
	"t"."Value"
FROM
	"NullableBoolClass" "t"
WHERE
	"t"."Value" IS NOT NULL

BeforeExecute
-- Firebird.4 Firebird4

SELECT
	"t"."Value"
FROM
	"NullableBoolClass" "t"

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'NullableBoolClass')) THEN
		EXECUTE STATEMENT 'DROP TABLE "NullableBoolClass"';
END

