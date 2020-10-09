BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL
DECLARE @ID Integer -- Int32
SET     @ID = 1
DECLARE @take Integer -- Int32
SET     @take = 2

SELECT 
	p."PersonID", 
	p."FirstName", 
	p."LastName", 
	p."MiddleName", 
	p."Gender"
FROM
	"Person" p
WHERE
	p."PersonID" = :ID
LIMIT :take

