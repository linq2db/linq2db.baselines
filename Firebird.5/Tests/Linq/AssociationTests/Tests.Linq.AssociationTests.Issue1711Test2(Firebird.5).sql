﻿BeforeExecute
-- Firebird.5 Firebird4

SELECT
	"t"."Id"
FROM
	"Entity1711" "t"
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"Relationship1711" "r"
		WHERE
			"r"."Deleted" = FALSE AND "r"."EntityId" = "t"."Id"
	)

