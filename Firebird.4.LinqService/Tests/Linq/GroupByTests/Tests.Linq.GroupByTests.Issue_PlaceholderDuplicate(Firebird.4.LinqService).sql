BeforeExecute
-- Firebird.4 Firebird4 (asynchronously)
DECLARE @take Integer -- Int32
SET     @take = 100

SELECT
	"r"."PersonID",
	"r"."PersonID"
FROM
	"Person" "r"
GROUP BY
	"r"."PersonID",
	"r"."PersonID"
ORDER BY
	"r"."PersonID"
FETCH NEXT @take ROWS ONLY

