BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)

UPDATE
	"Ints" "i"
SET
	"One" = "i"."Two" * 5,
	("Two", "Three") = (200, "i"."Three" * 10),
	("Four", "Nil") = ("i"."One" * "i"."Four", 600)
WHERE
	"i"."One" = 10

BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)

SELECT
	"t1"."One",
	"t1"."Two",
	"t1"."Three",
	"t1"."Four",
	"t1"."Five",
	"t1"."Nil"
FROM
	"Ints" "t1"
ORDER BY
	"t1"."One"

