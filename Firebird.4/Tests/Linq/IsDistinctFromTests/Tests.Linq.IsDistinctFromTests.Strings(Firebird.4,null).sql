BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Src')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Src"';
END

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Src')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Src"
			(
				"Int"            Int                                    NOT NULL,
				"NullableInt"    Int,
				"String"         VarChar(255) CHARACTER SET UNICODE_FSS,
				"NullableString" VarChar(255) CHARACTER SET UNICODE_FSS
			)
		';
END

BeforeExecute
-- Firebird.4 Firebird4

INSERT INTO "Src"
(
	"Int",
	"NullableInt",
	"String",
	"NullableString"
)
SELECT 2,2,CAST('abc' AS VarChar(255) CHARACTER SET UNICODE_FSS),CAST('abc' AS VarChar(255) CHARACTER SET UNICODE_FSS) FROM rdb$database UNION ALL
SELECT 3,NULL,'def',NULL FROM rdb$database

BeforeExecute
-- Firebird.4 Firebird4

SELECT
	COUNT(*)
FROM
	"Src" "s"
WHERE
	"s"."String" IS NOT NULL

BeforeExecute
-- Firebird.4 Firebird4

SELECT
	COUNT(*)
FROM
	"Src" "s"
WHERE
	"s"."NullableString" IS NOT NULL

BeforeExecute
-- Firebird.4 Firebird4

SELECT
	COUNT(*)
FROM
	"Src" "s"
WHERE
	"s"."String" IS NULL

BeforeExecute
-- Firebird.4 Firebird4

SELECT
	COUNT(*)
FROM
	"Src" "s"
WHERE
	"s"."NullableString" IS NULL

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Src')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Src"';
END

