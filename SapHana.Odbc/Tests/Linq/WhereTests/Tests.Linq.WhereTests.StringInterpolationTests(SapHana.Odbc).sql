BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	COUNT(*)
FROM
	"Person" "p"
WHERE
	"p"."LastName" || ', ' || "p"."FirstName" = ("p"."LastName" || ', ' || "p"."FirstName") AND
	'<' || "p"."LastName" || ', ' || "p"."FirstName" || '>' = ('<' || "p"."LastName" || ', ' || "p"."FirstName") || '>' AND
	'<' || "p"."LastName" || "p"."FirstName" || '>' = ('<' || "p"."LastName" || "p"."FirstName") || '>' AND
	('<{p.LastName}, ' || "p"."FirstName" || ' {' || "p"."LastName" || '}>') = ('<{p.LastName}, ' || "p"."FirstName" || ' {' || "p"."LastName") || '}>' AND
	'{}' || "p"."LastName" = '{}' || "p"."LastName"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	COUNT(*)
FROM
	"Person" "t1"

