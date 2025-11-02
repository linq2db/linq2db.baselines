-- SapHana.Odbc SapHanaOdbc

SELECT
	COUNT(*)
FROM
	"Person" "p"
WHERE
	"p"."FirstName" IN ('oh', 'oh''', 'oh\')

