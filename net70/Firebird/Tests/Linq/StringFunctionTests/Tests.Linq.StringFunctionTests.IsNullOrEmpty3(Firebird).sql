BeforeExecute
-- Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'IsNullOrEmptyTable')) THEN
		EXECUTE STATEMENT 'DROP TABLE "IsNullOrEmptyTable"';
END

BeforeExecute
-- Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'IsNullOrEmptyTable')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "IsNullOrEmptyTable"
			(
				"Id"    Int                                    NOT NULL,
				"Value" VarChar(255) CHARACTER SET UNICODE_FSS
			)
		';
END

BeforeExecute
-- Firebird

INSERT INTO "IsNullOrEmptyTable"
(
	"Id",
	"Value"
)
SELECT 1,CAST('   ' AS VarChar(255) CHARACTER SET UNICODE_FSS) FROM rdb$database UNION ALL
SELECT 2,'' FROM rdb$database

BeforeExecute
-- Firebird

SELECT
	"p"."Id",
	"p"."Value"
FROM
	"IsNullOrEmptyTable" "p"
WHERE
	("p"."Value" IS NULL OR Char_Length("p"."Value") = 0)

BeforeExecute
-- Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'IsNullOrEmptyTable')) THEN
		EXECUTE STATEMENT 'DROP TABLE "IsNullOrEmptyTable"';
END

