BeforeExecute
-- SapHana.Native SapHana

SELECT
	"p"."FirstName"
FROM
	"Person" "p"
WHERE
	"p"."FirstName" || ' I' = 'John I'

