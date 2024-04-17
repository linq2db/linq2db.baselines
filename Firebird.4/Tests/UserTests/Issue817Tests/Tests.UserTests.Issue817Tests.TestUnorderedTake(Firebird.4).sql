BeforeExecute
-- Firebird.4 Firebird4
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT
	1
FROM
	"Person" "t1"
FETCH NEXT @take ROWS ONLY

