-- PostgreSQL.11 PostgreSQL
SELECT
	p."ParentID",
	p."Value1"
FROM
	"Parent" p
WHERE
	p."ParentID" = 2

-- PostgreSQL.11 PostgreSQL
DECLARE @id Integer -- Int32
SET     @id = 2

SELECT
	p."FirstName",
	p."PersonID",
	p."LastName",
	p."MiddleName",
	p."Gender"
FROM
	"Person" p
WHERE
	p."PersonID" = :id
LIMIT 2

