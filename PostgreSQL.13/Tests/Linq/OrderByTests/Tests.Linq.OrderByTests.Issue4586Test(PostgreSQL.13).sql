BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @take Integer -- Int32
SET     @take = 2
DECLARE @skip Integer -- Int32
SET     @skip = 1

SELECT
	x."FirstName",
	x."PersonID",
	x."LastName",
	x."MiddleName",
	x."Gender"
FROM
	"Person" x
WHERE
	x."FirstName" LIKE 'J%' ESCAPE '~'
ORDER BY
	x."PersonID" DESC
LIMIT :take OFFSET :skip 

