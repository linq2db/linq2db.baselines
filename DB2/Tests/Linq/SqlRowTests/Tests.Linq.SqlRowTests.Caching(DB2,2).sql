BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @r3 Integer(4) -- Int32
SET     @r3 = 2

SELECT
	COUNT(*)
FROM
	"Ints" "i"
WHERE
	("i"."One", "i"."Two", "i"."Three") = ("i"."One", "i"."One" * 2, @r3)

