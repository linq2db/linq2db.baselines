BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)

SELECT /* qb */
	"t"."PersonID",
	"t"."Diagnosis"
FROM
	"Parent" "t1",
	"Child" "c_1"
		INNER JOIN "Patient" "t" ON "c_1"."ParentID" = "t"."PersonID"

