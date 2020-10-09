BeforeExecute
-- PostgreSQL.9.3 PostgreSQL
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT 
	person_1."PersonID"
FROM
	"Person" person_1
LIMIT :take

