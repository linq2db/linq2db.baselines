BeforeExecute
-- Firebird.3 Firebird3 (asynchronously)
DECLARE @take Integer -- Int32
SET     @take = 2

SELECT
	"t3"."projection__set_id__",
	"t3".ID,
	"t3"."FirstName",
	"t3"."LastName",
	"t3"."MiddleName",
	"t3"."Gender",
	"t3"."Patient",
	"t3"."PersonID",
	"t3"."Diagnosis"
FROM
	(
		SELECT
			"t1".ID,
			CAST(0 AS Int) as "projection__set_id__",
			"t1"."FirstName",
			"t1"."LastName",
			"t1"."MiddleName",
			"t1"."Gender",
			NULL as "Patient",
			NULL as "PersonID",
			NULL as "Diagnosis"
		FROM
			(
				SELECT
					"p"."PersonID" as ID,
					"p"."FirstName",
					"p"."LastName",
					"p"."MiddleName",
					"p"."Gender"
				FROM
					"Person" "p"
				FETCH NEXT @take ROWS ONLY
			) "t1"
		UNION ALL
		SELECT
			"t2"."PersonID" as ID,
			CAST(1 AS Int) as "projection__set_id__",
			"t2"."FirstName",
			"t2"."LastName",
			"t2"."MiddleName",
			"t2"."Gender",
			"a_Patient"."PersonID" as "Patient",
			"a_Patient"."PersonID",
			"a_Patient"."Diagnosis"
		FROM
			"Person" "t2"
				LEFT JOIN "Patient" "a_Patient" ON "t2"."PersonID" = "a_Patient"."PersonID"
	) "t3"
ORDER BY
	"t3".ID

