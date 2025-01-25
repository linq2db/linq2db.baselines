BeforeExecute
-- Firebird.5 Firebird4
DECLARE @take Integer -- Int32
SET     @take = 100

SELECT
	"t1"."PersonID",
	"t1"."PersonID"
FROM
	"Person" "t1"
GROUP BY
	"t1"."PersonID",
	"t1"."PersonID"
ORDER BY
	"t1"."PersonID"
FETCH NEXT @take ROWS ONLY

