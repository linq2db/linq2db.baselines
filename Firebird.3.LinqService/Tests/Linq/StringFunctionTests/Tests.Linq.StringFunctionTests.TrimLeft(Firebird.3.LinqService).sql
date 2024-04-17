BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"p"."PersonID",
	"p"."FirstName"
FROM
	"Person" "p"
WHERE
	TRIM(LEADING FROM ('  ' || "p"."FirstName" || ' ')) = 'John ' AND
	"p"."PersonID" = 1

