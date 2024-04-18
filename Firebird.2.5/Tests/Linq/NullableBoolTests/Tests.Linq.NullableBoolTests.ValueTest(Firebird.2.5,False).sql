﻿BeforeExecute
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

INSERT INTO "NullableBoolClass"
(
	"Value"
)
SELECT NULL FROM rdb$database UNION ALL
SELECT '1' FROM rdb$database UNION ALL
SELECT '0' FROM rdb$database

BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @value Char(1) -- String
SET     @value = '0'

SELECT
	"t"."Value"
FROM
	"NullableBoolClass" "t"
WHERE
	"t"."Value" = @value

BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @value Char(1) -- String
SET     @value = '0'

SELECT
	"t"."Value"
FROM
	"NullableBoolClass" "t"
WHERE
	"t"."Value" = @value

BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @value Char(1) -- String
SET     @value = '0'

SELECT
	"t"."Value"
FROM
	"NullableBoolClass" "t"
WHERE
	("t"."Value" <> @value OR "t"."Value" IS NULL)

BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @value Char(1) -- String
SET     @value = '0'

SELECT
	"t"."Value"
FROM
	"NullableBoolClass" "t"
WHERE
	"t"."Value" <> @value

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'NullableBoolClass')) THEN
		EXECUTE STATEMENT 'DROP TABLE "NullableBoolClass"';
END

