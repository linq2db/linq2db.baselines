BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Src')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Src"';
END

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Src')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Src"
			(
				"Id"    Int                                   NOT NULL,
				"Int"   Int,
				"Enum"  VarChar(5) CHARACTER SET UNICODE_FSS,
				"CEnum" VarChar(20) CHARACTER SET UNICODE_FSS
			)
		';
END

BeforeExecute
-- Firebird.2.5 Firebird

INSERT INTO "Src"
(
	"Id",
	"Int",
	"Enum",
	"CEnum"
)
SELECT 1,NULL,CAST(NULL AS VarChar(5) CHARACTER SET UNICODE_FSS),CAST(NULL AS VarChar(20) CHARACTER SET UNICODE_FSS) FROM rdb$database UNION ALL
SELECT 2,2,'TWO','___Value2___' FROM rdb$database

BeforeExecute
-- Firebird.2.5 Firebird

SELECT FIRST 1
	"s"."Id"
FROM
	"Src" "s"
WHERE
	"s"."Enum" IN ('THREE', 'FOUR')

BeforeExecute
-- Firebird.2.5 Firebird

SELECT FIRST 1
	"s"."Id"
FROM
	"Src" "s"
WHERE
	("s"."Enum" IN ('THREE') OR "s"."Enum" IS NULL)

BeforeExecute
-- Firebird.2.5 Firebird

SELECT FIRST 1
	"s"."Id"
FROM
	"Src" "s"
WHERE
	"s"."Enum" IN ('THREE', 'TWO')

BeforeExecute
-- Firebird.2.5 Firebird

SELECT FIRST 1
	"s"."Id"
FROM
	"Src" "s"
WHERE
	("s"."Enum" NOT IN ('TWO') AND "s"."Enum" IS NOT NULL)

BeforeExecute
-- Firebird.2.5 Firebird

SELECT FIRST 1
	"s"."Id"
FROM
	"Src" "s"
WHERE
	("s"."Enum" NOT IN ('THREE', 'TWO') OR "s"."Enum" IS NULL)

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Src')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Src"';
END

