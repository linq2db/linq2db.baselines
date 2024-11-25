﻿BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	"t"."FirstName",
	"t"."PersonID",
	"t"."LastName",
	"t"."MiddleName",
	"t"."Gender"
FROM
	"Person" "t"
WHERE
	EXISTS(
		SELECT
			1
		FROM
			(
				SELECT 'j' AS "item" FROM rdb$database
				UNION ALL
				SELECT 'o' FROM rdb$database
				UNION ALL
				SELECT 'h' FROM rdb$database
				UNION ALL
				SELECT 'n' FROM rdb$database) "x"
		WHERE
			Position("x"."item", "t"."FirstName") - 1 > 0
	)

