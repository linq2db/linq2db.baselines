-- PostgreSQL.13 PostgreSQL13
DECLARE @take Integer -- Int32
SET     @take = 100

SELECT
	r."PersonID"
FROM
	"Person" r
ORDER BY
	r."PersonID"
LIMIT :take

