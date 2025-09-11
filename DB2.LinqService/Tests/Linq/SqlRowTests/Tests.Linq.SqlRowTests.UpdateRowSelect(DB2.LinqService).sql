BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)

UPDATE
	"Ints" "i"
SET
	"One" = "i"."Two" * 5,
	("Two", "Three") = (
		SELECT
			"i"."Two" * 10,
			"j"."Three" * 100
		FROM
			"Ints" "j"
		WHERE
			"j"."One" = 1
	),
	("Four", "Nil") = ("i"."One" * "i"."Four", 600)
WHERE
	"i"."One" = 10

BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)

SELECT
	"t1"."Id",
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

