BeforeExecute
-- Firebird4 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Ints')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Ints"';
END

BeforeExecute
-- Firebird4 Firebird

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
-- Firebird4 Firebird
DECLARE @One Integer -- Int32
SET     @One = 1
DECLARE @Two Integer -- Int32
SET     @Two = 2
DECLARE @Three Integer -- Int32
SET     @Three = 3
DECLARE @Four Integer -- Int32
SET     @Four = 4
DECLARE @Five Integer -- Int32
SET     @Five = 5
DECLARE @Nil Integer -- Int32
SET     @Nil = NULL

INSERT INTO "Ints"
(
	"One",
	"Two",
	"Three",
	"Four",
	"Five",
	"Nil"
)
VALUES
(
	@One,
	@Two,
	@Three,
	@Four,
	@Five,
	@Nil
)

BeforeExecute
-- Firebird4 Firebird

SELECT
	Count(*)
FROM
	"Ints" "i"
WHERE
	("i"."One" > "i"."One" OR "i"."One" = "i"."One" AND "i"."Two" >= "i"."One" * 2) AND
	("i"."One" < "i"."One" OR "i"."One" = "i"."One" AND "i"."Two" <= "i"."One" + "i"."One")

BeforeExecute
-- Firebird4 Firebird

SELECT
	Count(*)
FROM
	"Ints" "i"
WHERE
	("i"."One" > "i"."One" OR "i"."One" = "i"."One" AND "i"."Three" >= "i"."One") AND
	("i"."One" < "i"."One" OR "i"."One" = "i"."One" AND "i"."Three" <= "i"."Four")

BeforeExecute
-- Firebird4 Firebird

SELECT
	Count(*)
FROM
	"Ints" "i"
WHERE
	("i"."One" > "i"."One" OR "i"."One" = "i"."One" AND "i"."Two" >= "i"."Three") AND
	("i"."One" < "i"."One" OR "i"."One" = "i"."One" AND "i"."Two" <= "i"."Two")

BeforeExecute
-- Firebird4 Firebird

SELECT
	Count(*)
FROM
	"Ints" "i"
WHERE
	("i"."Two" > "i"."One" OR "i"."Two" = "i"."One" AND "i"."Five" >= "i"."One") AND
	("i"."Two" < "i"."Three" OR "i"."Two" = "i"."Three" AND "i"."Five" <= "i"."Two")

BeforeExecute
-- Firebird4 Firebird

SELECT
	Count(*)
FROM
	"Ints" "i"
WHERE
	("i"."Two" > "i"."One" OR "i"."Two" = "i"."One" AND "i"."Five" >= "i"."One") AND
	("i"."Two" < "i"."Two" OR "i"."Two" = "i"."Two" AND "i"."Five" <= "i"."Two")

BeforeExecute
-- Firebird4 Firebird

SELECT
	Count(*)
FROM
	"Ints" "i"
WHERE
	("i"."Two" > "i"."One" OR "i"."Two" = "i"."One" AND "i"."Nil" >= "i"."One") AND
	("i"."Two" < "i"."Three" OR "i"."Two" = "i"."Three" AND "i"."Nil" <= "i"."One")

BeforeExecute
-- Firebird4 Firebird

SELECT
	Count(*)
FROM
	"Ints" "i"
WHERE
	("i"."Two" > "i"."Two" OR "i"."Two" = "i"."Two" AND "i"."Nil" >= "i"."One") AND
	("i"."Two" < "i"."Two" OR "i"."Two" = "i"."Two" AND "i"."Nil" <= "i"."Three")

BeforeExecute
-- Firebird4 Firebird

SELECT
	Count(*)
FROM
	"Ints" "i"
WHERE
	("i"."Two" > "i"."One" OR "i"."Two" = "i"."One" AND "i"."Five" >= "i"."Nil") AND
	("i"."Two" < "i"."Three" OR "i"."Two" = "i"."Three" AND "i"."Five" <= "i"."Nil")

BeforeExecute
-- Firebird4 Firebird

SELECT
	Count(*)
FROM
	"Ints" "i"
WHERE
	("i"."Two" > "i"."One" OR "i"."Two" = "i"."One" AND "i"."Nil" >= "i"."Nil") AND
	("i"."Two" < "i"."Three" OR "i"."Two" = "i"."Three" AND "i"."Nil" <= "i"."Nil")

BeforeExecute
-- Firebird4 Firebird

SELECT
	Count(*)
FROM
	"Ints" "i"
WHERE
	("i"."Two" > "i"."Nil" OR "i"."Two" = "i"."Nil" AND "i"."Two" >= "i"."One") AND
	("i"."Two" < "i"."Three" OR "i"."Two" = "i"."Three" AND "i"."Two" <= "i"."Five")

BeforeExecute
-- Firebird4 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Ints')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Ints"';
END

