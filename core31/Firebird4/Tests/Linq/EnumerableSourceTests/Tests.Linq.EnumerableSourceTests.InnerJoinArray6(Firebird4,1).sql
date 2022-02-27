BeforeExecute
-- Firebird4 Firebird

SELECT
	"p"."FirstName",
	"p"."PersonID",
	"p"."LastName",
	"p"."MiddleName",
	"p"."Gender"
FROM
	"Person" "p"
		INNER JOIN (
			SELECT CAST('Doe' AS VarChar(255) CHARACTER SET UNICODE_FSS) AS "item" FROM rdb$database) "n" ON "p"."LastName" = "n"."item"

