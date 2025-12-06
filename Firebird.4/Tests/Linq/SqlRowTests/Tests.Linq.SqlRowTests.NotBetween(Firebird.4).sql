-- Firebird.4 Firebird4

SELECT
	COUNT(*)
FROM
	"Ints" "i"
WHERE
	NOT ("i"."Two" >= "i"."One" * 2 AND "i"."Two" <= "i"."One" + "i"."One")

-- Firebird.4 Firebird4

SELECT
	COUNT(*)
FROM
	"Ints" "i"
WHERE
	NOT ("i"."Three" >= "i"."One" AND "i"."Three" <= "i"."Four")

-- Firebird.4 Firebird4

SELECT
	COUNT(*)
FROM
	"Ints" "i"
WHERE
	"i"."Two" < "i"."Three"

-- Firebird.4 Firebird4

SELECT
	COUNT(*)
FROM
	"Ints" "i"
WHERE
	NOT (("i"."Two" > "i"."One" OR "i"."Two" = "i"."One" AND "i"."Five" >= "i"."One") AND ("i"."Two" < "i"."Three" OR "i"."Two" = "i"."Three" AND "i"."Five" <= "i"."Two"))

-- Firebird.4 Firebird4

SELECT
	COUNT(*)
FROM
	"Ints" "i"
WHERE
	NOT (("i"."Two" > "i"."One" OR "i"."Two" = "i"."One" AND "i"."Five" >= "i"."One") AND "i"."Five" <= "i"."Two")

-- Firebird.4 Firebird4

SELECT
	COUNT(*)
FROM
	"Ints" "i"
WHERE
	NOT (("i"."Two" > "i"."One" OR "i"."Two" = "i"."One" AND "i"."Nil" >= "i"."One") AND ("i"."Two" < "i"."Three" OR "i"."Two" = "i"."Three" AND "i"."Nil" <= "i"."One"))

-- Firebird.4 Firebird4

SELECT
	COUNT(*)
FROM
	"Ints" "i"
WHERE
	NOT ("i"."Nil" >= "i"."One" AND "i"."Nil" <= "i"."Three")

-- Firebird.4 Firebird4

SELECT
	COUNT(*)
FROM
	"Ints" "i"
WHERE
	NOT (("i"."Two" > "i"."One" OR "i"."Two" = "i"."One" AND "i"."Five" >= "i"."Nil") AND ("i"."Two" < "i"."Three" OR "i"."Two" = "i"."Three" AND "i"."Five" <= "i"."Nil"))

-- Firebird.4 Firebird4

SELECT
	COUNT(*)
FROM
	"Ints" "i"
WHERE
	NOT (("i"."Two" > "i"."One" OR "i"."Two" = "i"."One" AND "i"."Nil" >= "i"."Nil") AND ("i"."Two" < "i"."Three" OR "i"."Two" = "i"."Three" AND "i"."Nil" <= "i"."Nil"))

-- Firebird.4 Firebird4

SELECT
	COUNT(*)
FROM
	"Ints" "i"
WHERE
	NOT (("i"."Two" > "i"."Nil" OR "i"."Two" = "i"."Nil" AND "i"."Two" >= "i"."One") AND ("i"."Two" < "i"."Three" OR "i"."Two" = "i"."Three" AND "i"."Two" <= "i"."Five"))

