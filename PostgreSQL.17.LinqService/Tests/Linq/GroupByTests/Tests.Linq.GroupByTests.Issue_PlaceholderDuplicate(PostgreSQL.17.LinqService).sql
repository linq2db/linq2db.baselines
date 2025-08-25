BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL (asynchronously)
DECLARE @take Integer -- Int32
SET     @take = 100

SELECT
	r."PersonID",
	r."PersonID"
FROM
	"Person" r
GROUP BY
	r."PersonID",
	r."PersonID"
ORDER BY
	r."PersonID"
LIMIT :take

