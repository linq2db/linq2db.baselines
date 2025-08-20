BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"t1"."FirstName",
	"t1".ID,
	"t1"."LastName",
	"t1"."MiddleName",
	"t1"."Gender"
FROM
	(
		SELECT
			CAST("p"."FirstName" LIKE '%Jo%' ESCAPE '~' AS smallint) as "Field1",
			"p"."FirstName",
			"p"."PersonID" as ID,
			"p"."LastName",
			"p"."MiddleName",
			"p"."Gender"
		FROM
			"Person" "p"
	) "t1"
WHERE
	"t1"."Field1"
ORDER BY
	"t1"."Field1"

