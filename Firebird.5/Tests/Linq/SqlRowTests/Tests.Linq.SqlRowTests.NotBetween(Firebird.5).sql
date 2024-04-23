﻿BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Ints')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Ints"';
END

BeforeExecute
-- Firebird.5 Firebird4

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
-- Firebird.5 Firebird4

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
-- Firebird.5 Firebird4

SELECT
	Count(*)
FROM
	"Ints" "i"
WHERE
	NOT (("i"."One" > "i"."One" OR "i"."One" = "i"."One" AND "i"."Two" >= "i"."One" * 2) AND ("i"."One" < "i"."One" OR "i"."One" = "i"."One" AND "i"."Two" <= "i"."One" + "i"."One"))

BeforeExecute
-- Firebird.5 Firebird4

SELECT
	Count(*)
FROM
	"Ints" "i"
WHERE
	NOT (("i"."One" > "i"."One" OR "i"."One" = "i"."One" AND "i"."Three" >= "i"."One") AND ("i"."One" < "i"."One" OR "i"."One" = "i"."One" AND "i"."Three" <= "i"."Four"))

BeforeExecute
-- Firebird.5 Firebird4

SELECT
	Count(*)
FROM
	"Ints" "i"
WHERE
	NOT (("i"."One" > "i"."One" OR "i"."One" = "i"."One" AND "i"."Two" >= "i"."Three") AND ("i"."One" < "i"."One" OR "i"."One" = "i"."One" AND "i"."Two" <= "i"."Two"))

BeforeExecute
-- Firebird.5 Firebird4

SELECT
	Count(*)
FROM
	"Ints" "i"
WHERE
	NOT (("i"."Two" > "i"."One" OR "i"."Two" = "i"."One" AND "i"."Five" >= "i"."One") AND ("i"."Two" < "i"."Three" OR "i"."Two" = "i"."Three" AND "i"."Five" <= "i"."Two"))

BeforeExecute
-- Firebird.5 Firebird4

SELECT
	Count(*)
FROM
	"Ints" "i"
WHERE
	NOT (("i"."Two" > "i"."One" OR "i"."Two" = "i"."One" AND "i"."Five" >= "i"."One") AND ("i"."Two" < "i"."Two" OR "i"."Two" = "i"."Two" AND "i"."Five" <= "i"."Two"))

BeforeExecute
-- Firebird.5 Firebird4

SELECT
	Count(*)
FROM
	"Ints" "i"
WHERE
	NOT (("i"."Two" > "i"."One" OR "i"."Two" = "i"."One" AND "i"."Nil" >= "i"."One") AND ("i"."Two" < "i"."Three" OR "i"."Two" = "i"."Three" AND "i"."Nil" <= "i"."One"))

BeforeExecute
-- Firebird.5 Firebird4

SELECT
	Count(*)
FROM
	"Ints" "i"
WHERE
	NOT (("i"."Two" > "i"."Two" OR "i"."Two" = "i"."Two" AND "i"."Nil" >= "i"."One") AND ("i"."Two" < "i"."Two" OR "i"."Two" = "i"."Two" AND "i"."Nil" <= "i"."Three"))

BeforeExecute
-- Firebird.5 Firebird4

SELECT
	Count(*)
FROM
	"Ints" "i"
WHERE
	NOT (("i"."Two" > "i"."One" OR "i"."Two" = "i"."One" AND "i"."Five" >= "i"."Nil") AND ("i"."Two" < "i"."Three" OR "i"."Two" = "i"."Three" AND "i"."Five" <= "i"."Nil"))

BeforeExecute
-- Firebird.5 Firebird4

SELECT
	Count(*)
FROM
	"Ints" "i"
WHERE
	NOT (("i"."Two" > "i"."One" OR "i"."Two" = "i"."One" AND "i"."Nil" >= "i"."Nil") AND ("i"."Two" < "i"."Three" OR "i"."Two" = "i"."Three" AND "i"."Nil" <= "i"."Nil"))

BeforeExecute
-- Firebird.5 Firebird4

SELECT
	Count(*)
FROM
	"Ints" "i"
WHERE
	NOT (("i"."Two" > "i"."Nil" OR "i"."Two" = "i"."Nil" AND "i"."Two" >= "i"."One") AND ("i"."Two" < "i"."Three" OR "i"."Two" = "i"."Three" AND "i"."Two" <= "i"."Five"))

BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Ints')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Ints"';
END

