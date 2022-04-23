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
				"Id"  Int NOT NULL,
				"Int" Int
			)
		';
END

BeforeExecute
-- Firebird

INSERT INTO "Src"
(
	"Id",
	"Int"
)
SELECT 1,NULL FROM rdb$database UNION ALL
SELECT 2,2 FROM rdb$database

BeforeExecute
-- Firebird

SELECT
	Count(*)
FROM
	"Src" "s"
WHERE
	"s"."Int" IS NULL

BeforeExecute
-- Firebird

SELECT
	Count(*)
FROM
	"Src" "s"
WHERE
	"s"."Int" IS NOT NULL

BeforeExecute
-- Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Src')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Src"';
END

