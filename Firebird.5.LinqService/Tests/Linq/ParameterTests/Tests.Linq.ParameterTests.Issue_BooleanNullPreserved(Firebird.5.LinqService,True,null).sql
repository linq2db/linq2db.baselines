BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'TestBool')) THEN
		EXECUTE STATEMENT 'DROP TABLE "TestBool"';
END

BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'TestBool')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "TestBool"
			(
				"Id"    Int     NOT NULL,
				"Value" BOOLEAN
			)
		';
END

BeforeExecute
-- Firebird.5 Firebird4

INSERT INTO "TestBool"
(
	"Id",
	"Value"
)
VALUES
(
	1,
	NULL
)

BeforeExecute
-- Firebird.5 Firebird4

SELECT
	"t1"."Id",
	"t1"."Value"
FROM
	"TestBool" "t1"
FETCH NEXT 2 ROWS ONLY

BeforeExecute
-- Firebird.5 Firebird4

UPDATE
	"TestBool" "t1"
SET
	"Id" = 1,
	"Value" = NOT "t1"."Value"

BeforeExecute
-- Firebird.5 Firebird4

SELECT
	"t1"."Id",
	"t1"."Value"
FROM
	"TestBool" "t1"
FETCH NEXT 2 ROWS ONLY

BeforeExecute
-- Firebird.5 Firebird4

UPDATE
	"TestBool" "t1"
SET
	"Id" = 1,
	"Value" = NULL

BeforeExecute
-- Firebird.5 Firebird4

SELECT
	"t1"."Id",
	"t1"."Value"
FROM
	"TestBool" "t1"
FETCH NEXT 2 ROWS ONLY

BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'TestBool')) THEN
		EXECUTE STATEMENT 'DROP TABLE "TestBool"';
END

