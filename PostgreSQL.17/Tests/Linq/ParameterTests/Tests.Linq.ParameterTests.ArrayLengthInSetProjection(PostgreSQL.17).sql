-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12
DECLARE @arr Integer -- Int32
SET     @arr = 2

SELECT
	p."PersonID",
	:arr::Int
FROM
	"Person" p
WHERE
	p."PersonID" = 1
UNION ALL
SELECT
	p_1."PersonID",
	0::Int
FROM
	"Person" p_1
WHERE
	p_1."PersonID" = 2

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12
SELECT
	t1."FirstName",
	t1."PersonID",
	t1."LastName",
	t1."MiddleName",
	t1."Gender"
FROM
	"Person" t1

