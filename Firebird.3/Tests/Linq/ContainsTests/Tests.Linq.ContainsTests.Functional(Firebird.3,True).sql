BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Src')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Src"';
END

BeforeExecute
-- Firebird.3 Firebird3

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
-- Firebird.3 Firebird3

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
-- Firebird.3 Firebird3

SELECT
	"s"."Id"
FROM
	"Src" "s"
WHERE
	"s"."Int" IN (-1, -2)
FETCH NEXT 1 ROWS ONLY

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"s"."Id"
FROM
	"Src" "s"
WHERE
	("s"."Int" IN (-1) OR "s"."Int" IS NULL)
FETCH NEXT 1 ROWS ONLY

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"s"."Id"
FROM
	"Src" "s"
WHERE
	"s"."Int" IN (-1, 2)
FETCH NEXT 1 ROWS ONLY

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"s"."Id"
FROM
	"Src" "s"
WHERE
	("s"."Int" NOT IN (2) AND "s"."Int" IS NOT NULL)
FETCH NEXT 1 ROWS ONLY

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"s"."Id"
FROM
	"Src" "s"
WHERE
	("s"."Int" NOT IN (-1, 2) OR "s"."Int" IS NULL)
FETCH NEXT 1 ROWS ONLY

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Src')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Src"';
END

