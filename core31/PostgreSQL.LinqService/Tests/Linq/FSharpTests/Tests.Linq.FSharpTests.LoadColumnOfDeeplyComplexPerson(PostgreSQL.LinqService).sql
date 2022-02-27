BeforeExecute
-- PostgreSQL PostgreSQL.9.5 PostgreSQL
DECLARE @ID Integer -- Int32
SET     @ID = 1
DECLARE @take Integer -- Int32
SET     @take = 2

SELECT
	p."LastName"
FROM
	"Person" p
WHERE
	p."PersonID" = :ID
LIMIT :take

