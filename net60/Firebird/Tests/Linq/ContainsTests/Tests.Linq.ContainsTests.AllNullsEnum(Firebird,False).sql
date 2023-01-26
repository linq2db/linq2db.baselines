BeforeExecute
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
				"Id"    Int                                  NOT NULL,
				"Int"   Int,
				"Enum"  VarChar(5) CHARACTER SET UNICODE_FSS,
				"CEnum" Int
			)
		';
END

BeforeExecute
-- Firebird

INSERT INTO "Src"
(
	"Id",
	"Int",
	"Enum",
	"CEnum"
)
SELECT 1,NULL,CAST(NULL AS VarChar(5) CHARACTER SET UNICODE_FSS),NULL FROM rdb$database UNION ALL
SELECT 2,2,'TWO',1 FROM rdb$database

BeforeExecute
-- Firebird

SELECT
	Count(*)
FROM
	"Src" "s"
WHERE
	"s"."Enum" IN (NULL, NULL)

BeforeExecute
-- Firebird

SELECT
	Count(*)
FROM
	"Src" "s"
WHERE
	"s"."Enum" NOT IN (NULL, NULL)

BeforeExecute
-- Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Src')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Src"';
END

