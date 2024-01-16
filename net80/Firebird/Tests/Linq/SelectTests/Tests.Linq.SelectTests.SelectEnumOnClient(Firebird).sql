BeforeExecute
-- Firebird
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT FIRST @take
	"person_1"."PersonID"
FROM
	"Person" "person_1"

