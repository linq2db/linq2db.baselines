-- SapHana.Odbc SapHanaOdbc
SELECT
	"x"."Id",
	"t1"."PetName"
FROM
	"OneToManyCar" "x"
		LEFT JOIN "OneToManyPerson" "a_Person" ON "x"."PersonId" = "a_Person"."Id"
		LEFT JOIN LATERAL (
			SELECT
				"a_PetIds"."Name" as "PetName"
			FROM
				"OneToManyPet" "a_PetIds"
			WHERE
				"a_Person"."Id" = "a_PetIds"."PersonId"
			LIMIT 1
		) "t1" ON 1=1

