﻿BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	"x"."FirstName",
	"x"."PersonID",
	"x"."LastName",
	"x"."MiddleName",
	"x"."Gender"
FROM
	"Person" "x"
WHERE
	EXISTS(
		SELECT
			*
		FROM
			(
				SELECT CAST('John' AS VarChar(255) CHARACTER SET UNICODE_FSS) AS "item" FROM rdb$database
				UNION ALL
				SELECT CAST('Not John' AS VarChar(255) CHARACTER SET UNICODE_FSS) FROM rdb$database) "y"
		WHERE
			"y"."item" = "x"."FirstName"
	)

