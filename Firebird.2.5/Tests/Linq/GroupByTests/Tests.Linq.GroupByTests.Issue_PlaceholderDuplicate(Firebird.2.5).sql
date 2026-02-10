-- Firebird.2.5 Firebird
DECLARE @take Integer -- Int32
SET     @take = 100

SELECT FIRST @take
	"r"."PersonID",
	"r"."PersonID"
FROM
	"Person" "r"
ORDER BY
	"r"."PersonID"

