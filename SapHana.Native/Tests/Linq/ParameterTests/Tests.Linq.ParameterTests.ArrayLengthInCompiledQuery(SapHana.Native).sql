-- SapHana.Native SapHana
DECLARE @p Integer -- Int32
SET     @p = 1

SELECT
	"p"."PersonID"
FROM
	"Person" "p"
WHERE
	"p"."PersonID" = :"p"
LIMIT 2

-- SapHana.Native SapHana
DECLARE @p Integer -- Int32
SET     @p = 2

SELECT
	"p"."PersonID"
FROM
	"Person" "p"
WHERE
	"p"."PersonID" = :"p"
LIMIT 2

