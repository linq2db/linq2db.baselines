-- SapHana.Native SapHana
SELECT
	COUNT(*)
FROM
	"Person" "p"
WHERE
	"p"."PersonID" = 1 AND '123]456' LIKE '%]%' ESCAPE '~'

-- SapHana.Native SapHana
SELECT
	COUNT(*)
FROM
	"Person" "p"
WHERE
	"p"."PersonID" = 1 AND '123]456' NOT LIKE '%]%' ESCAPE '~'

