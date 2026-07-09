-- PostgreSQL.13 PostgreSQL13
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT
	1
FROM
	"Person" t1
LIMIT :take

