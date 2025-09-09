BeforeExecute
-- Firebird.3 Firebird3 (asynchronously)

SELECT
	COUNT(*)
FROM
	"Person" "p"
WHERE
	CAST("p"."FirstName" AS BLOB) NOT LIKE '%Joh%' ESCAPE '~' AND
	"p"."PersonID" = 1

