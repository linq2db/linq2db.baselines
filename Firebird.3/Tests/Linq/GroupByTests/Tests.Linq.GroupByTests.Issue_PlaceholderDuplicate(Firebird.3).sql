-- Firebird.3 Firebird3
DECLARE @take Integer -- Int32
SET     @take = 100

SELECT
	"r"."PersonID",
	"r"."PersonID"
FROM
	"Person" "r"
ORDER BY
	"r"."PersonID"
FETCH NEXT @take ROWS ONLY

