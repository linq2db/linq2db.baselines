-- Firebird.5 Firebird4

SELECT
	"entity1"."FirstName",
	"entity1"."PersonID",
	"entity1"."LastName",
	"entity1"."MiddleName",
	"entity1"."Gender",
	"t1"."FirstName",
	"t1".ID,
	"t1"."LastName",
	"t1"."MiddleName",
	"t1"."Gender"
FROM
	"Person" "entity1"
		LEFT JOIN LATERAL (
			SELECT
				"entity2"."FirstName",
				"entity2"."PersonID" as ID,
				"entity2"."LastName",
				"entity2"."MiddleName",
				"entity2"."Gender"
			FROM
				"Person" "entity2"
			WHERE
				"entity2"."PersonID" = "entity1"."PersonID"
			FETCH NEXT 1 ROWS ONLY
		) "t1" ON 1=1
FETCH NEXT 1 ROWS ONLY

