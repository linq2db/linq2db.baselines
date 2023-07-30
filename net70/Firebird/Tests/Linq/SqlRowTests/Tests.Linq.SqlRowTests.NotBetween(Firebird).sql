BeforeExecute
-- Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Ints')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Ints"';
END

BeforeExecute
-- Firebird

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
-- Firebird

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
-- Firebird

SELECT
	Count(*)
FROM
	"Ints" "i"
WHERE
	(("i"."One" < "i"."One" OR "i"."One" = "i"."One" AND "i"."Two" < "i"."One" * 2) OR ("i"."One" > "i"."One" OR "i"."One" = "i"."One" AND "i"."Two" > "i"."One" + "i"."One"))

BeforeExecute
-- Firebird

SELECT
	Count(*)
FROM
	"Ints" "i"
WHERE
	(("i"."One" < "i"."One" OR "i"."One" = "i"."One" AND "i"."Three" < "i"."One") OR ("i"."One" > "i"."One" OR "i"."One" = "i"."One" AND "i"."Three" > "i"."Four"))

BeforeExecute
-- Firebird

SELECT
	Count(*)
FROM
	"Ints" "i"
WHERE
	(("i"."One" < "i"."One" OR "i"."One" = "i"."One" AND "i"."Two" < "i"."Three") OR ("i"."One" > "i"."One" OR "i"."One" = "i"."One" AND "i"."Two" > "i"."Two"))

BeforeExecute
-- Firebird

SELECT
	Count(*)
FROM
	"Ints" "i"
WHERE
	(("i"."Two" < "i"."One" OR "i"."Two" = "i"."One" AND "i"."Five" < "i"."One") OR ("i"."Two" > "i"."Three" OR "i"."Two" = "i"."Three" AND "i"."Five" > "i"."Two"))

BeforeExecute
-- Firebird

SELECT
	Count(*)
FROM
	"Ints" "i"
WHERE
	(("i"."Two" < "i"."One" OR "i"."Two" = "i"."One" AND "i"."Five" < "i"."One") OR ("i"."Two" > "i"."Two" OR "i"."Two" = "i"."Two" AND "i"."Five" > "i"."Two"))

BeforeExecute
-- Firebird

SELECT
	Count(*)
FROM
	"Ints" "i"
WHERE
	(("i"."Two" < "i"."One" OR "i"."Two" = "i"."One" AND "i"."Nil" < "i"."One") OR ("i"."Two" > "i"."Three" OR "i"."Two" = "i"."Three" AND "i"."Nil" > "i"."One"))

BeforeExecute
-- Firebird

SELECT
	Count(*)
FROM
	"Ints" "i"
WHERE
	(("i"."Two" < "i"."Two" OR "i"."Two" = "i"."Two" AND "i"."Nil" < "i"."One") OR ("i"."Two" > "i"."Two" OR "i"."Two" = "i"."Two" AND "i"."Nil" > "i"."Three"))

BeforeExecute
-- Firebird

SELECT
	Count(*)
FROM
	"Ints" "i"
WHERE
	(("i"."Two" < "i"."One" OR "i"."Two" = "i"."One" AND "i"."Five" < "i"."Nil") OR ("i"."Two" > "i"."Three" OR "i"."Two" = "i"."Three" AND "i"."Five" > "i"."Nil"))

BeforeExecute
-- Firebird

SELECT
	Count(*)
FROM
	"Ints" "i"
WHERE
	(("i"."Two" < "i"."One" OR "i"."Two" = "i"."One" AND "i"."Nil" < "i"."Nil") OR ("i"."Two" > "i"."Three" OR "i"."Two" = "i"."Three" AND "i"."Nil" > "i"."Nil"))

BeforeExecute
-- Firebird

SELECT
	Count(*)
FROM
	"Ints" "i"
WHERE
	(("i"."Two" < "i"."Nil" OR "i"."Two" = "i"."Nil" AND "i"."Two" < "i"."One") OR ("i"."Two" > "i"."Three" OR "i"."Two" = "i"."Three" AND "i"."Two" > "i"."Five"))

BeforeExecute
-- Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Ints')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Ints"';
END

