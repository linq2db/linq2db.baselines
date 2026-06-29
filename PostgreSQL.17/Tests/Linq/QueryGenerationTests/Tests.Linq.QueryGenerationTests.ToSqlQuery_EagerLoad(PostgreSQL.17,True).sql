-- PostgreSQL.17 PostgreSQL.15 PostgreSQL13

SELECT
	p."ParentID",
	p."Value1"
FROM
	"Parent" p
WHERE
	p."ParentID" = 2

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL13
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

