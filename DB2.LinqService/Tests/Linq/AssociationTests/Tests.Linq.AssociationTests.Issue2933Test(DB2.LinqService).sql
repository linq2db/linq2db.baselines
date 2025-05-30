﻿BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"x"."Id",
	(
		SELECT
			"a_PetIds"."Name"
		FROM
			"Issue2933Pet" "a_PetIds"
		WHERE
			"a_Person"."Id" = "a_PetIds"."PersonId"
		FETCH NEXT 1 ROWS ONLY
	)
FROM
	"Issue2933Car" "x"
		LEFT JOIN "Issue2933Person" "a_Person" ON "x"."PersonId" = "a_Person"."Id"

