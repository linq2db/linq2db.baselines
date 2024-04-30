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
DECLARE @Value Char -- String
SET     @Value = NULL

INSERT INTO "NullableBoolClass"
(
	"Value"
)
VALUES
(
	CAST(@Value AS CHAR(1))
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
	CAST(@Value AS CHAR(1))
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
	CAST(@Value AS CHAR(1))
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
	"t"."Value" = @value

BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @value Char -- String
SET     @value = '1'

SELECT
	"t"."Value"
FROM
	"NullableBoolClass" "t"
WHERE
	"t"."Value" = @value

BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @value Char -- String
SET     @value = '1'

SELECT
	"t"."Value"
FROM
	"NullableBoolClass" "t"
WHERE
	("t"."Value" <> @value OR "t"."Value" IS NULL)

BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @value Char -- String
SET     @value = '1'

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

