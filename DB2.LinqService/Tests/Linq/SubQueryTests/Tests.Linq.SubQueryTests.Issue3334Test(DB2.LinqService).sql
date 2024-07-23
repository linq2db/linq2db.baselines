BeforeExecute
-- DB2 DB2.LUW DB2LUW

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
		LEFT JOIN (
			SELECT
				"entity2"."FirstName",
				"entity2"."PersonID" as ID,
				"entity2"."LastName",
				"entity2"."MiddleName",
				"entity2"."Gender",
				ROW_NUMBER() OVER (PARTITION BY "entity2"."PersonID" ORDER BY "entity2"."PersonID") as "rn"
			FROM
				"Person" "entity2"
		) "t1" ON "t1".ID = "entity1"."PersonID" AND "t1"."rn" <= 1
FETCH NEXT 1 ROWS ONLY

