BeforeExecute
-- PostgreSQL.15 PostgreSQL (asynchronously)
DECLARE @take Integer -- Int32
SET     @take = 1
DECLARE @skip Integer -- Int32
SET     @skip = 0

SELECT
	1
FROM
	"Person" t1
LIMIT :take OFFSET :skip 

