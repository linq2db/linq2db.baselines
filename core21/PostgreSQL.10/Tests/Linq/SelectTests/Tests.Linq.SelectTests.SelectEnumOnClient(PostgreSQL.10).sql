BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT 
	person_1."PersonID"
FROM
	"Person" person_1
LIMIT :take

