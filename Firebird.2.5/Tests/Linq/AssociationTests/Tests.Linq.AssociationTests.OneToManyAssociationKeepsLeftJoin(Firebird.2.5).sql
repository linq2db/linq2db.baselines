-- Firebird.2.5 Firebird
SELECT
	"x"."Id",
	(
		SELECT FIRST 1
			"a_PetIds"."Name"
		FROM
			"OneToManyPet" "a_PetIds"
		WHERE
			"a_Person"."Id" = "a_PetIds"."PersonId"
	)
FROM
	"OneToManyCar" "x"
		LEFT JOIN "OneToManyPerson" "a_Person" ON "x"."PersonId" = "a_Person"."Id"

