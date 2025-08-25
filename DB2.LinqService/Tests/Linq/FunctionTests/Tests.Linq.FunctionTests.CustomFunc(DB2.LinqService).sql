BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)

SELECT
	"p"."LastName" || ', ' || "p"."FirstName"
FROM
	"Person" "p"
WHERE
	"p"."LastName" || ', ' || "p"."FirstName" = 'Pupkin, John'

