-- PostgreSQL.14 PostgreSQL.13 PostgreSQL
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

