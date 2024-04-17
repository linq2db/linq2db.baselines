BeforeExecute
-- Firebird.5 Firebird4
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT
	"person_1"."PersonID"
FROM
	"Person" "person_1"
FETCH NEXT @take ROWS ONLY

