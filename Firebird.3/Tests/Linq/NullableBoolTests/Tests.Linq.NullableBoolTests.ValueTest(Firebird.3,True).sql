﻿BeforeExecute
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

INSERT INTO "NullableBoolClass"
(
	"Value"
)
SELECT NULL FROM rdb$database UNION ALL
SELECT TRUE FROM rdb$database UNION ALL
SELECT FALSE FROM rdb$database

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @value Boolean
SET     @value = TRUE

SELECT
	"t"."Value"
FROM
	"NullableBoolClass" "t"
WHERE
	"t"."Value" = @value

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @value Boolean
SET     @value = TRUE

SELECT
	"t"."Value"
FROM
	"NullableBoolClass" "t"
WHERE
	"t"."Value" = @value

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @value Boolean
SET     @value = TRUE

SELECT
	"t"."Value"
FROM
	"NullableBoolClass" "t"
WHERE
	"t"."Value" <> @value OR "t"."Value" IS NULL

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @value Boolean
SET     @value = TRUE

SELECT
	"t"."Value"
FROM
	"NullableBoolClass" "t"
WHERE
	"t"."Value" <> @value

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'NullableBoolClass')) THEN
		EXECUTE STATEMENT 'DROP TABLE "NullableBoolClass"';
END

