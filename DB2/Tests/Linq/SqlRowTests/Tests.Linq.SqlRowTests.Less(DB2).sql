-- DB2 DB2.LUW DB2LUW

SELECT
	COUNT(*)
FROM
	"Ints" "i"
WHERE
	("i"."One", "i"."Two", "i"."Three") < ("i"."One", "i"."One" * 2, "i"."Four" - 1)

-- DB2 DB2.LUW DB2LUW

SELECT
	COUNT(*)
FROM
	"Ints" "i"
WHERE
	("i"."One", "i"."Two", "i"."Four") < ("i"."One", "i"."Two", "i"."Three")

-- DB2 DB2.LUW DB2LUW

SELECT
	COUNT(*)
FROM
	"Ints" "i"
WHERE
	("i"."One", "i"."Two", "i"."Four") < ("i"."One", "i"."Five", "i"."Three")

-- DB2 DB2.LUW DB2LUW

SELECT
	COUNT(*)
FROM
	"Ints" "i"
WHERE
	("i"."One", "i"."Nil", "i"."One") < ("i"."One", "i"."Two", "i"."Three")

-- DB2 DB2.LUW DB2LUW

SELECT
	COUNT(*)
FROM
	"Ints" "i"
WHERE
	(0, NULL, 3) < ("i"."One", "i"."Two", "i"."Three")

