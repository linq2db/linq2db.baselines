-- DB2 DB2.LUW DB2LUW
SELECT
	"x"."Id",
	(
		SELECT
			"a_PetIds"."Name"
		FROM
			"OneToManyPet" "a_PetIds"
		WHERE
			"a_Person"."Id" = "a_PetIds"."PersonId"
		FETCH NEXT 1 ROWS ONLY
	)
FROM
	"OneToManyCar" "x"
		LEFT JOIN "OneToManyPerson" "a_Person" ON "x"."PersonId" = "a_Person"."Id"

