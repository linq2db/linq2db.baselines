BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)

SELECT
	Lower("p"."Taxonomy")
FROM
	"Doctor" "p"
WHERE
	Lower("p"."Taxonomy") = 'psychiatry'

