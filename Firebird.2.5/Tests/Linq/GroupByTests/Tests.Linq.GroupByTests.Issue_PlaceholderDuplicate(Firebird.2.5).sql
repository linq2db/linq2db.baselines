-- Firebird.2.5 Firebird
DECLARE @take Integer -- Int32
SET     @take = 100

SELECT FIRST @take
	"r"."PersonID",
	"r"."PersonID"
FROM
	"Person" "r"
GROUP BY
	"r"."PersonID",
	"r"."PersonID"
ORDER BY
	"r"."PersonID"

