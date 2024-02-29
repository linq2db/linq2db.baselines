BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT
	person_1."PersonID"
FROM
	"Person" person_1
LIMIT :take

