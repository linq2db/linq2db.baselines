-- Firebird.3 Firebird3

SELECT
	COUNT(*)
FROM
	"Ints" "i"
WHERE
	"i"."Two" >= "i"."One" * 2 AND "i"."Two" <= "i"."One" + "i"."One"

-- Firebird.3 Firebird3

SELECT
	COUNT(*)
FROM
	"Ints" "i"
WHERE
	"i"."Three" >= "i"."One" AND "i"."Three" <= "i"."Four"

-- Firebird.3 Firebird3

SELECT
	COUNT(*)
FROM
	"Ints" "i"
WHERE
	"i"."Two" >= "i"."Three"

-- Firebird.3 Firebird3

SELECT
	COUNT(*)
FROM
	"Ints" "i"
WHERE
	("i"."Two" > "i"."One" OR "i"."Two" = "i"."One" AND "i"."Five" >= "i"."One") AND
	("i"."Two" < "i"."Three" OR "i"."Two" = "i"."Three" AND "i"."Five" <= "i"."Two")

-- Firebird.3 Firebird3

SELECT
	COUNT(*)
FROM
	"Ints" "i"
WHERE
	("i"."Two" > "i"."One" OR "i"."Two" = "i"."One" AND "i"."Five" >= "i"."One") AND
	"i"."Five" <= "i"."Two"

-- Firebird.3 Firebird3

SELECT
	COUNT(*)
FROM
	"Ints" "i"
WHERE
	("i"."Two" > "i"."One" OR "i"."Two" = "i"."One" AND "i"."Nil" >= "i"."One") AND
	("i"."Two" < "i"."Three" OR "i"."Two" = "i"."Three" AND "i"."Nil" <= "i"."One")

-- Firebird.3 Firebird3

SELECT
	COUNT(*)
FROM
	"Ints" "i"
WHERE
	"i"."Nil" >= "i"."One" AND "i"."Nil" <= "i"."Three"

-- Firebird.3 Firebird3

SELECT
	COUNT(*)
FROM
	"Ints" "i"
WHERE
	("i"."Two" > "i"."One" OR "i"."Two" = "i"."One" AND "i"."Five" >= "i"."Nil") AND
	("i"."Two" < "i"."Three" OR "i"."Two" = "i"."Three" AND "i"."Five" <= "i"."Nil")

-- Firebird.3 Firebird3

SELECT
	COUNT(*)
FROM
	"Ints" "i"
WHERE
	("i"."Two" > "i"."One" OR "i"."Two" = "i"."One" AND "i"."Nil" >= "i"."Nil") AND
	("i"."Two" < "i"."Three" OR "i"."Two" = "i"."Three" AND "i"."Nil" <= "i"."Nil")

-- Firebird.3 Firebird3

SELECT
	COUNT(*)
FROM
	"Ints" "i"
WHERE
	("i"."Two" > "i"."Nil" OR "i"."Two" = "i"."Nil" AND "i"."Two" >= "i"."One") AND
	("i"."Two" < "i"."Three" OR "i"."Two" = "i"."Three" AND "i"."Two" <= "i"."Five")

