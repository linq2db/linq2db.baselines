BeforeExecute
-- Firebird.5 Firebird4 (asynchronously)
DECLARE @skip Integer -- Int32
SET     @skip = 0
DECLARE @take Integer -- Int32
SET     @take = 3

SELECT DISTINCT
	"x"."DuplicateData"
FROM
	"OrderByDistinctData" "x"
OFFSET @skip ROWS FETCH NEXT @take ROWS ONLY 

