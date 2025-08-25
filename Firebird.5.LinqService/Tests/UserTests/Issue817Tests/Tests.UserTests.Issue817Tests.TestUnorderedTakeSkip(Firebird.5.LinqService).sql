BeforeExecute
-- Firebird.5 Firebird4 (asynchronously)
DECLARE @skip Integer -- Int32
SET     @skip = 1
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT
	1
FROM
	"Person" "t1"
OFFSET @skip ROWS FETCH NEXT @take ROWS ONLY 

