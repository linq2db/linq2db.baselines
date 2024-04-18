BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'StringTypesTable')) THEN
		EXECUTE STATEMENT 'DROP TABLE "StringTypesTable"';
END

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'StringTypesTable')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "StringTypesTable"
			(
				"Id"             Int                                   NOT NULL,
				"CharColumn"     Char(50),
				"NCharColumn"    NChar(50),
				"VarCharColumn"  VarChar(50) CHARACTER SET UNICODE_FSS,
				"NVarCharColumn" VarChar(50) CHARACTER SET UNICODE_FSS
			)
		';
END

BeforeExecute
-- Firebird.2.5 Firebird

INSERT INTO "StringTypesTable"
(
	"Id",
	"CharColumn",
	"NCharColumn",
	"VarCharColumn",
	"NVarCharColumn"
)
SELECT 1,'someString','someString',CAST('someString' AS VarChar(50) CHARACTER SET UNICODE_FSS),CAST('someString' AS VarChar(50) CHARACTER SET UNICODE_FSS) FROM rdb$database

BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	"t"."Id",
	"t"."CharColumn",
	"t"."NCharColumn",
	"t"."VarCharColumn",
	"t"."NVarCharColumn"
FROM
	"StringTypesTable" "t"
WHERE
	"t"."CharColumn" STARTING WITH 'some' AND
	"t"."NCharColumn" STARTING WITH 'some' AND
	"t"."VarCharColumn" STARTING WITH 'some' AND
	"t"."NVarCharColumn" STARTING WITH 'some'

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'StringTypesTable')) THEN
		EXECUTE STATEMENT 'DROP TABLE "StringTypesTable"';
END

