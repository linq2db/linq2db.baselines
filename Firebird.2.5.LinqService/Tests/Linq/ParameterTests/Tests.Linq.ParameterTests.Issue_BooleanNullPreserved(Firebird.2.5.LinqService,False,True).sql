BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'TestBool')) THEN
		EXECUTE STATEMENT 'DROP TABLE "TestBool"';
END

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'TestBool')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "TestBool"
			(
				"Id"    Int     NOT NULL,
				"Value" CHAR(1)
			)
		';
END

BeforeExecute
-- Firebird.2.5 Firebird

INSERT INTO "TestBool"
(
	"Id",
	"Value"
)
VALUES
(
	1,
	'0'
)

BeforeExecute
-- Firebird.2.5 Firebird

SELECT FIRST 2
	"t1"."Id",
	"t1"."Value"
FROM
	"TestBool" "t1"

BeforeExecute
-- Firebird.2.5 Firebird

UPDATE
	"TestBool" "t1"
SET
	"Id" = 1,
	"Value" = CASE
		WHEN "t1"."Value" = '0' THEN '1'
		WHEN "t1"."Value" = '1' THEN '0'
		ELSE NULL
	END

BeforeExecute
-- Firebird.2.5 Firebird

SELECT FIRST 2
	"t1"."Id",
	"t1"."Value"
FROM
	"TestBool" "t1"

BeforeExecute
-- Firebird.2.5 Firebird

UPDATE
	"TestBool" "t1"
SET
	"Id" = 1,
	"Value" = '0'

BeforeExecute
-- Firebird.2.5 Firebird

SELECT FIRST 2
	"t1"."Id",
	"t1"."Value"
FROM
	"TestBool" "t1"

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'TestBool')) THEN
		EXECUTE STATEMENT 'DROP TABLE "TestBool"';
END

