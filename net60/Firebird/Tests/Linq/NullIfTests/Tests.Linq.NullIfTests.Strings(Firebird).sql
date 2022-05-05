﻿BeforeExecute
-- Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Src')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Src"';
END

BeforeExecute
-- Firebird

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
-- Firebird

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
-- Firebird

SELECT
	NULLIF("s"."String", 'abc')
FROM
	"Src" "s"

BeforeExecute
-- Firebird

SELECT
	NULLIF("s"."String", 'xyz')
FROM
	"Src" "s"

BeforeExecute
-- Firebird

SELECT
	NULLIF("s"."NullableString", 'abc')
FROM
	"Src" "s"

BeforeExecute
-- Firebird

SELECT
	NULLIF("s"."NullableString", 'xyz')
FROM
	"Src" "s"

BeforeExecute
-- Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Src')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Src"';
END

