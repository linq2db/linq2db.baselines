BeforeExecute
-- Firebird3 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'ConcurrencyTable')) THEN
		EXECUTE STATEMENT 'DROP TABLE "ConcurrencyTable"';
END

BeforeExecute
-- Firebird3 Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'ConcurrencyTable')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "ConcurrencyTable"
			(
				"Id"    Int                                    NOT NULL,
				"Stamp" Int                                    NOT NULL,
				"Value" VarChar(255) CHARACTER SET UNICODE_FSS,

				CONSTRAINT "PK_ConcurrencyTable" PRIMARY KEY ("Id")
			)
		';
END

BeforeExecute
-- Firebird3 Firebird

SELECT
	"t1"."Id",
	"t1"."Stamp",
	"t1"."Value"
FROM
	"ConcurrencyTable" "t1"

BeforeExecute
-- Firebird3 Firebird

SELECT
	"t1"."Id",
	"t1"."Stamp",
	"t1"."Value"
FROM
	"ConcurrencyTable" "t1"

BeforeExecute
-- Firebird3 Firebird

SELECT
	"t1"."Id",
	"t1"."Stamp",
	"t1"."Value"
FROM
	"ConcurrencyTable" "t1"

BeforeExecute
-- Firebird3 Firebird

SELECT
	"t1"."Id",
	"t1"."Stamp",
	"t1"."Value"
FROM
	"ConcurrencyTable" "t1"

BeforeExecute
-- Firebird3 Firebird

SELECT
	"t1"."Id",
	"t1"."Stamp",
	"t1"."Value"
FROM
	"ConcurrencyTable" "t1"

BeforeExecute
-- Firebird3 Firebird

SELECT
	"t1"."Id",
	"t1"."Stamp",
	"t1"."Value"
FROM
	"ConcurrencyTable" "t1"

BeforeExecute
-- Firebird3 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'ConcurrencyTable')) THEN
		EXECUTE STATEMENT 'DROP TABLE "ConcurrencyTable"';
END

