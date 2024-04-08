﻿BeforeExecute
-- Firebird3 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Ints')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Ints"';
END

BeforeExecute
-- Firebird3 Firebird

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
-- Firebird3 Firebird

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
-- Firebird3 Firebird

SELECT
	Count(*)
FROM
	"Ints" "i"
WHERE
	("i"."One" > "i"."One" OR "i"."One" = "i"."One" AND "i"."Two" > "i"."One" * 2 OR "i"."One" = "i"."One" AND "i"."Two" = "i"."One" * 2 AND "i"."Three" > "i"."Four" - 1)

BeforeExecute
-- Firebird3 Firebird

SELECT
	Count(*)
FROM
	"Ints" "i"
WHERE
	("i"."One" > "i"."One" OR "i"."One" = "i"."One" AND "i"."Two" > "i"."Two" OR "i"."One" = "i"."One" AND "i"."Two" = "i"."Two" AND "i"."Four" > "i"."Three")

BeforeExecute
-- Firebird3 Firebird

SELECT
	Count(*)
FROM
	"Ints" "i"
WHERE
	("i"."One" > "i"."One" OR "i"."One" = "i"."One" AND "i"."Two" > "i"."Five" OR "i"."One" = "i"."One" AND "i"."Two" = "i"."Five" AND "i"."Four" > "i"."Three")

BeforeExecute
-- Firebird3 Firebird

SELECT
	Count(*)
FROM
	"Ints" "i"
WHERE
	("i"."One" > "i"."One" OR "i"."One" = "i"."One" AND "i"."Nil" > "i"."Two" OR "i"."One" = "i"."One" AND "i"."Nil" = "i"."Two" AND "i"."Four" > "i"."Three")

BeforeExecute
-- Firebird3 Firebird

SELECT
	Count(*)
FROM
	"Ints" "i"
WHERE
	(2 > "i"."One" OR 2 = "i"."One" AND NULL > "i"."Two")

BeforeExecute
-- Firebird3 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Ints')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Ints"';
END

