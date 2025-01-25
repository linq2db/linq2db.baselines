BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"x"."Id",
	"t1"."Name"
FROM
	"Issue2933Car" "x"
		LEFT JOIN "Issue2933Person" "a_Person" ON "x"."PersonId" = "a_Person"."Id"
		LEFT JOIN LATERAL (
			SELECT
				"a_PetIds"."Name"
			FROM
				"Issue2933Pet" "a_PetIds"
			WHERE
				"a_Person"."Id" = "a_PetIds"."PersonId"
			LIMIT 1
		) "t1" ON 1=1

