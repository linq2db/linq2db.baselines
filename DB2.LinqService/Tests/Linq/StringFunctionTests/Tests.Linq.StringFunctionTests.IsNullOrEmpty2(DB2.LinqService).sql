BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)

SELECT
	CAST(CHAR_LENGTH("p"."FirstName") = 0 AS smallint)
FROM
	"Person" "p"
WHERE
	"p"."PersonID" = 1

