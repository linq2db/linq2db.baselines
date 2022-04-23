BeforeExecute
-- Firebird3 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Src')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Src"';
END

BeforeExecute
-- Firebird3 Firebird

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
-- Firebird3 Firebird

INSERT INTO "Src"
(
	"Id",
	"Int"
)
SELECT 1,NULL FROM rdb$database UNION ALL
SELECT 2,2 FROM rdb$database

BeforeExecute
-- Firebird3 Firebird

SELECT
	Count(*)
FROM
	"Src" "s"
WHERE
	1 = 0

BeforeExecute
-- Firebird3 Firebird

SELECT
	Count(*)
FROM
	"Src" "s"
WHERE
	1 = 1

BeforeExecute
-- Firebird3 Firebird

SELECT
	Count(*)
FROM
	"Src" "s"
WHERE
	1 = 1

BeforeExecute
-- Firebird3 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Src')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Src"';
END

