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
-- Firebird.3 Firebird3

SELECT
	COUNT(*)
FROM
	"Ints" "i"
WHERE
	("i"."One" <> 1 OR "i"."Two" <> "i"."One" * 2)

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	COUNT(*)
FROM
	"Ints" "i"
WHERE
	("i"."Two" <> "i"."One" * 2 OR "i"."Three" <> "i"."Four" - 1) AND
	("i"."One" <> 0 OR "i"."Two" <> 7 OR "i"."Three" <> 9) AND
	("i"."One" >= NULL OR "i"."Two" <> -1 OR "i"."Three" <> "i"."Four")

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	COUNT(*)
FROM
	"Ints" "i"
WHERE
	("i"."Three" <> "i"."One" * 2 OR "i"."Four" <> "i"."Four" - 1) AND
	("i"."One" <> 0 OR "i"."Three" <> 7 OR "i"."Four" <> 9) AND
	("i"."One" >= NULL OR "i"."Three" <> 2)

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	COUNT(*)
FROM
	"Ints" "i"
WHERE
	("i"."Two" <> "i"."One" * 2 OR "i"."Four" <> "i"."Four" - 1) AND
	("i"."One" <> 0 OR "i"."Two" <> 7 OR "i"."Four" <> 9) AND
	("i"."One" >= NULL OR "i"."Two" <> 2)

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	COUNT(*)
FROM
	"Ints" "i"
WHERE
	("i"."Nil" <> "i"."One" OR "i"."Two" <> "i"."One" * 2 OR "i"."Four" <> "i"."Four" - 1) AND
	("i"."Nil" <> 0 OR "i"."Two" <> 7 OR "i"."Four" <> 9) AND
	("i"."Nil" >= NULL OR "i"."Two" <> 2)

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Ints')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Ints"';
END

