BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Ints')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Ints"';
END

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Ints')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Ints"
			(
				"One"   Int NOT NULL,
				"Two"   Int NOT NULL,
				"Three" Int NOT NULL,
				"Four"  Int NOT NULL,
				"Five"  Int NOT NULL,
				"Nil"   Int
			)
		';
END

BeforeExecute
-- Firebird.3 Firebird3

INSERT INTO "Ints"
(
	"One",
	"Two",
	"Three",
	"Four",
	"Five",
	"Nil"
)
SELECT 1,2,3,4,5,NULL FROM rdb$database

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	COUNT(*)
FROM
	"Ints" "i"
WHERE
	"i"."Two" = "i"."One" * 2 AND "i"."Three" = "i"."Four" - 1

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	COUNT(*)
FROM
	"Ints" "i"
WHERE
	"i"."Four" = "i"."Three"

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	COUNT(*)
FROM
	"Ints" "i"
WHERE
	"i"."Nil" = "i"."Two"

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	COUNT(*)
FROM
	"Ints" "i"
WHERE
	1 = "i"."One" AND "i"."Nil" = "i"."Nil" AND 3 = "i"."Three"

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	COUNT(*)
FROM
	"Ints" "i"
WHERE
	1 = "i"."One" AND NULL >= "i"."Nil" AND 3 = "i"."Three"

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Ints')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Ints"';
END

