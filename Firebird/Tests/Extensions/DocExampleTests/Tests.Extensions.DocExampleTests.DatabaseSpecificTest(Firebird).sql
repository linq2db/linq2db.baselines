BeforeExecute
-- Firebird

SELECT /* qb */
	"t"."PersonID",
	"t"."Diagnosis"
FROM
	(
		SELECT
			"c_1"."ParentID"
		FROM
			"Parent" "p",
			"Child" "c_1"
	) "t1"
		INNER JOIN "Patient" "t" ON "t1"."ParentID" = "t"."PersonID"

