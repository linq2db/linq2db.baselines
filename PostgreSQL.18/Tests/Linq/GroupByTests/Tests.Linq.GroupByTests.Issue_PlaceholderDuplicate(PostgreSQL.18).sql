-- PostgreSQL.18 PostgreSQL
DECLARE @take Integer -- Int32
SET     @take = 100

SELECT
	r."PersonID",
	r."PersonID"
FROM
	"Person" r
ORDER BY
	r."PersonID"
LIMIT :take

