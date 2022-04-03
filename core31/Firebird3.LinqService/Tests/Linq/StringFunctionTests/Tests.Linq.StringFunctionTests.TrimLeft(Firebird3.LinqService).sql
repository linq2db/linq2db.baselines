BeforeExecute
-- Firebird3 Firebird

SELECT
	"p"."PersonID",
	"p"."FirstName"
FROM
	"Person" "p"
WHERE
	TRIM(LEADING FROM ('  ' || "p"."FirstName" || ' ')) = 'John ' AND
	"p"."PersonID" = 1

