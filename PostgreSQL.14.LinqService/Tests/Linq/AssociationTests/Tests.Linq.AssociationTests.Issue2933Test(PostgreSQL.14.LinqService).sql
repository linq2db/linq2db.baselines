﻿BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	x."Id",
	(
		SELECT
			"a_PetIds"."Name"
		FROM
			"Issue2933Pet" "a_PetIds"
		WHERE
			"a_Person"."Id" = "a_PetIds"."PersonId"
		LIMIT 1
	)
FROM
	"Issue2933Car" x
		LEFT JOIN "Issue2933Person" "a_Person" ON x."PersonId" = "a_Person"."Id"

