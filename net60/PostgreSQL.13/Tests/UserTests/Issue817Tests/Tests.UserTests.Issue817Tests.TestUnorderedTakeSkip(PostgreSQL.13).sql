BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @take Integer -- Int32
SET     @take = 1
DECLARE @skip Integer -- Int32
SET     @skip = 1

SELECT
	1
FROM
	"Person" t1
LIMIT :take OFFSET :skip 

