BeforeExecute
-- Firebird.3 Firebird3

SELECT
	COUNT(*)
FROM
	"Person" "p"
WHERE
	CAST("p"."FirstName" AS BLOB) NOT LIKE '%Joh%' ESCAPE '~' AND
	"p"."PersonID" = 1

