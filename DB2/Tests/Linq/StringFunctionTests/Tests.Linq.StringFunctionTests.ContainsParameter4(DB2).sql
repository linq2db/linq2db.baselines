BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"p_1"."FirstName",
	"p_1".ID,
	"p_1"."LastName",
	"p_1"."MiddleName",
	"p_1"."Gender"
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
	) "p_1"
WHERE
	"p_1"."Field1"
ORDER BY
	"p_1"."Field1"

