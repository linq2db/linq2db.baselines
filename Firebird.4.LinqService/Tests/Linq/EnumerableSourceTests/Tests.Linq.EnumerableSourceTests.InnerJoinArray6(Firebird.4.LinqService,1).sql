﻿BeforeExecute
-- Firebird.4 Firebird4

SELECT
	"p"."FirstName",
	"p"."PersonID",
	"p"."LastName",
	"p"."MiddleName",
	"p"."Gender"
FROM
	"Person" "p"
		INNER JOIN (
			SELECT CAST('Doe' AS VARCHAR(3)) AS "item" FROM rdb$database) "n" ON "p"."LastName" = "n"."item"

