BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @take Integer -- Int32
SET     @take = 100

SELECT FIRST @take
	"t1"."PersonID",
	"t1"."PersonID"
FROM
	"Person" "t1"
GROUP BY
	"t1"."PersonID",
	"t1"."PersonID"
ORDER BY
	"t1"."PersonID"

