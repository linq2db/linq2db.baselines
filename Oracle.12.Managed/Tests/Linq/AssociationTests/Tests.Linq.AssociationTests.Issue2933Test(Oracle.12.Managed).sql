BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	x."Id",
	t1."Name"
FROM
	"Issue2933Car" x
		LEFT JOIN "Issue2933Person" a_Person ON x."PersonId" = a_Person."Id"
		OUTER APPLY (
			SELECT
				a_PetIds."Name"
			FROM
				"Issue2933Pet" a_PetIds
			WHERE
				a_Person."Id" IS NOT NULL AND a_Person."Id" = a_PetIds."PersonId"
			FETCH NEXT 1 ROWS ONLY
		) t1

