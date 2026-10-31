-- SapHana.Native SapHana
SELECT
	COUNT(*)
FROM
	"Person" "t1"

-- SapHana.Native SapHana
DECLARE @skip Integer -- Int32
SET     @skip = 1

SELECT
	1
FROM
	"Person" "t1"
LIMIT 4200000000 OFFSET :"skip"

